-- ~/.config/nvim/lua/config/options.lua
vim.g.mapleader = " " -- Prefix used for many keybinds

require("plugins") -- Will load plugins directory automatically

vim.diagnostic.config({ virtual_text = true }) -- Enables lsp warnings

-- Personal preferences!
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.tabstop = 2

vim.o.winborder = "rounded"

vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.wrap = true

