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
    end
  }
}
