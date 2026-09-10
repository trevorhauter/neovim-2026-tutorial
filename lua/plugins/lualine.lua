vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

-- Note: lualine requires nvim-wev-devicons but that is already included in
-- nvim-tree
require("lualine").setup({
    options = {
        theme = "gruvbox-material",
    },
    sections = {
        lualine_c = { { "filename", path = 1 } },
    },
})
