return {
  {
    'echasnovski/mini.nvim',
    config = function()
      -- editing
      require("mini.pairs").setup()
      require("mini.surround").setup()

      -- statusline dependencies
      require("mini.icons").setup()
      require("mini.git").setup()
      require("mini.diff").setup()

      -- statusline
      require("mini.statusline").setup()
    end
  },
}
