return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    local rose_pine = require("rose-pine")
    rose_pine.setup {
      variant = "moon"
    }
    vim.cmd("colorscheme rose-pine")
  end
}
