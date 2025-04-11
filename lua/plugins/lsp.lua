return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },

    -- define servers here
    opts = {
      servers = {
        lua_ls = {},
        gopls = {},
        pyright = {},
        nil_ls = {},
        ts_ls = {},
        rust_analyzer = {},
      }
    },

    -- strart config
    config = function(_, opts)
      local lsp = require("lspconfig")
      local blink = require("blink.cmp").get_lsp_capabilities()

      -- LSP capabilities
      for server, config in pairs(opts.servers) do
        config.capabilities = blink
        lsp[server].setup(config)
      end

      -- keybindings
      local jump_diagnostic = function()
        vim.diagnostic.jump({ count = 1, float = true })
      end

      vim.keymap.set("n", "<leader>D", vim.lsp.buf.definition, { desc = "LSP [D]efinition" })
      vim.keymap.set("n", "<leader>d", jump_diagnostic, { desc = "[d]iagnostic" })
      vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, { desc = "[Q]uickfix" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP [C]ode [A]ction" })
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "LSP [R]ename" })
    end
  }
}
