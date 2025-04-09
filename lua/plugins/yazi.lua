return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    -- key bindings
    keys = {
      {
        "<leader>yy",
        mode = { "n" },
        "<cmd>Yazi<cr>",
        desc = "Open [Y]azi at the current file",
      },
      {
        "<leader>oo",
        "<cmd>Yazi cwd<cr>",
        desc = "[O]pen the file manager in nvim's working directory",
      },
      {
        "<c-up>",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
    },

  },
}
