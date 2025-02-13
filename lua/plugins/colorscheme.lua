return {
  {
    "rose-pine/neovim",
    enabled = false,
    name = "rose-pine",
    config = function()
      local rose_pine = require("rose-pine")
      rose_pine.setup {
        variant = "moon"
      }
      vim.cmd("colorscheme rose-pine")
    end

  },
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    config = function()
      local dracula = require("dracula")
      dracula.setup()
      vim.cmd("colorscheme dracula")
    end
  }
}
