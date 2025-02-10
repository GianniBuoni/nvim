return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup {
	ensure_installed = {},
	sync_install = false,
	ignore_install = {},
	auto_install = false,
	highlight = { enable = true },
	modules = {}
      }
    end
  }
}
