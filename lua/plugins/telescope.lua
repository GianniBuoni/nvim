return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require("telescope.builtin")
      local key = vim.keymap
      key.set("n", "<leader>ff", telescope.find_files, { desc = "Telescope [F]ind [F]iles" })
      key.set("n", "<leader>fr", telescope.registers, { desc = "Telescope [F]ind [R]egister" })
      key.set("n", "<leader>fg", telescope.live_grep, { desc = "Telescope [F]ind [G]rep" })
      key.set(
        "n", "<leader>en",
        function()
          telescope.find_files({ cwd = vim.fn.stdpath("config") })
        end,
        { desc = "Telescope [E]dit [N]eovim" }
      )

      -- quick fix for telescope ui https://github.com/nvim-telescope/telescope.nvim/issues/3436
      vim.api.nvim_create_autocmd("User", {
        pattern = "TelescopeFindPre",
        callback = function()
          vim.opt_local.winborder = "none"
          vim.api.nvim_create_autocmd("WinLeave", {
            once = true,
            callback = function()
              vim.opt_local.winborder = "rounded"
            end,
          })
        end,
      })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
