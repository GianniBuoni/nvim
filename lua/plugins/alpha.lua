return {
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local theme = require("config.alpha-theme")
      local button = require("config.alpha-buttons")

      theme.buttons.val = {
        button("f", "󰈔  Find File", "<CMD>Telescope find_files<CR>", "Special"),
        button("o", "󰝰  File Dirs", "<CMD>Yazi cwd<CR>", "Special"),
        button("g", "󱎸  Live Grep", "<CMD>Telescope live_grep<CR>", "Special"),
        button("h", "󰑐  History", "<CMD>Telescope oldfiles<CR>", "Special"),
        button("q", "󰚑 Quit NeoVim", "<CMD>qa<CR>", "String"),
      }

      alpha.setup {
        layout = {
          theme.top_margin,
          theme.header,
          theme.spacer,
          theme.buttons,
          theme.spacer,
          theme.footer,
        }
      }
    end
  }
}
