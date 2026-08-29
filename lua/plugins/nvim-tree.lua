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


local nvim_tree_api = require("nvim-tree.api")

-- Toggle nvim-tree in normal mode with ctrl + n
vim.keymap.set(
    "n",
    "<C-n>",
    nvim_tree_api.tree.toggle,
    { noremap = true, silent = true }
)

-- Open your current file in nvim-tree with <leader> + n
vim.keymap.set(
    "n",
    "<leader>n",
    function()
        nvim_tree_api.tree.find_file({
            open = true,
            update_root = "<bang>",
            focus = true,
        })
    end,
    { noremap = true, silent = true }
)
