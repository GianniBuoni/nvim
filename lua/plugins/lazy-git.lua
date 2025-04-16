return {
  "kdheepak/lazygit.nvim",
  lazy = false,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  keys = {
    { "<leader>ll", "<cmd>LazyGit<cr>", desc = "LazyGit" }
  },
  config = function()
    vim.g.lazygit_floating_window_border_chars = { "", "", "", "", "", "", "", "" }
  end
}
