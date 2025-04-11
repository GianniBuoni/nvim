return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ll", "<cmd>LazyGit<cr>", desc = "LazyGit" }
  },
  config = function()
    local telescope = require("telescope")
    telescope.load_extension("lazygit")

    local border = "none"
    vim.o.winborder = border
  end,
}
