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
      vim.keymap.set("n", "<leader>D", vim.lsp.buf.definition, { desc = "LSP [D]efinition" })
      vim.keymap.set("n", "<leader>d", vim.diagnostic.goto_next, { desc = "[d]iagnostic" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP [C]ode [A]ction" })

      -- float border
      local border = "single"
      local handlers = { "textDocument/hover", "textDocument/signatureHelp" }

      for _, handler in ipairs(handlers) do
        vim.lsp.handlers[handler] = vim.lsp.with(
          vim.lsp.handlers.hover, {
            border = border
          }
        )
      end

      vim.diagnostic.config {
        float = { border = border }
      }

      -- format on save
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end

          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = args.buffer,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
        end
      })
    end
  }
}
