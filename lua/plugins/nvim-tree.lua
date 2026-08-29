vim.pack.add({
    -- web-devicons are a dependency for nvim-tree, but also many other plugins
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

-- Turn off netrw (builtin Neovim file explorer)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
        -- Adapt size of explorer to file/directory names
        adaptive_size = true,
        -- Show relative line numbers in file explorer
        number = true,
        relativenumber = true,
    },
    -- Hide git/gitignore by default
    filters = { custom = { "^.git$", "^.gitignore$" } },
})

-- Toggle nvim-tree in normal mode with ctrl + n
vim.keymap.set(
    "n",
    "<C-n>",
    ":NvimTreeToggle<CR>",
    { noremap = true, silent = true }
)

-- Open your current file in nvim-tree with <leader> + n
vim.keymap.set(
    "n",
    "<leader>n",
    ":NvimTreeFindFile<CR>",
    { noremap = true, silent = true }
)
