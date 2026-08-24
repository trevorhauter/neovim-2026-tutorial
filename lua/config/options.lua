vim.g.mapleader = " " -- Prefix used for keybinds

require("plugins") -- Will load plugins directory automatically

-- Set default indentation length (in spaces)
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.tabstop = 2

-- Use spaces for tab in insert mode ;)
vim.opt.expandtab = true

-- Don't highlight every search result when performing a `/` search
vim.opt.hlsearch = false

-- Show line numbers in editor
vim.opt.nu = true

-- Make line numbers relative to cursor (really great for efficient motions!)
vim.opt.relativenumber = true

-- Always keep 8 lines of buffer at the top or bottom
vim.opt.scrolloff = 8

-- Leaves space for signs and other hints in line number column
vim.opt.signcolumn = "yes"

-- Better indentation
vim.opt.smartindent = true

-- I have swapfiles disabled for convenience, 
-- may want to enable if memory is a concern
vim.opt.swapfile = false

-- Wrap text at edge of screen
vim.opt.wrap = true
