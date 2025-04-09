return {
  'stevearc/overseer.nvim',
  config = function()
    local overseer = require("overseer")
    local key = vim.keymap

    overseer.setup {
      -- keybindings
      key.set(
        "n",
        "<leader><leader>r",
        "<cmd>OverseerOpen<cr><bar><cmd>OverseerRun<cr>",
        { desc = "Overseer [R]un" }
      ),

      key.set(
        "n",
        "<leader><leader>o",
        "<cmd>OverseerToggle<cr>",
        { desc = "[O]verseer Toggle" }
      )
    }
  end
}
