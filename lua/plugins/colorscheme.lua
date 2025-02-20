return {
  {
    "catppuccin/nvim",
    enabled = false,
    name = "catppuccin",
    config = function()
      local catppuccin = require("catppuccin")
      catppuccin.setup()
      vim.cmd("colorscheme catppuccin-mocha")
    end
  },
  {
    "Mofiqul/dracula.nvim",
    enabled = true,
    name = "dracula",
    config = function()
      local dracula = require("dracula")
      dracula.setup()
      vim.cmd("colorscheme dracula")
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    enabled = false,
    name = "gruvbox",
    config = function()
      local gruvbox = require("gruvbox")
      gruvbox.setup()
      vim.cmd("colorscheme gruvbox")
    end
  },
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
}
