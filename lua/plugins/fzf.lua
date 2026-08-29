vim.pack.add({ "https://github.com/ibhagwan/fzf-lua" })

local fzf = require("fzf-lua")

-- Live grep project
vim.keymap.set({ "n", "v" }, "<leader>/", fzf.live_grep)

-- Search files returned from git status
vim.keymap.set({ "n", "v" }, "<leader>d", fzf.git_status)

-- Search files throughout the project
vim.keymap.set({ "n", "v" }, "<leader>f", fzf.files)

-- Search
vim.keymap.set({ "n", "v" }, "sw", fzf.grep_cword)
