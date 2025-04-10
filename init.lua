-- globals
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = true

-- sourcing shortcuts
local key = vim.keymap
key.set("n", "<leader><leader>x", "<cmd>source %<CR>")
key.set("n", "<leader>x", "<cmd>.lua<CR>")
key.set("v", "<leader>x", "<cmd>.lua<CR>")

-- editing opts
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true

-- visual opts
vim.opt.number = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.laststatus = 3       -- global status line
vim.opt.inccommand = "split" -- create split for sed commnand
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.winborder = "rounded" -- add border to windows


-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- general keybindings
key.set("n", "<c-w>", "<cmd>vnew<cr>")
key.set("n", "<leader>lp", "<cmd>LspRestart<cr>")
key.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- imports
require("config.lazy")
