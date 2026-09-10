vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

local treesitter = require("nvim-treesitter")

treesitter.install({"python", "zig"})

-- auto-highlight files when opened
vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        if
            vim.list_contains(
                treesitter.get_installed(),
                vim.treesitter.language.get_lang(args.match)
            )
        then
            vim.treesitter.start(args.buf)
        end
    end,
})
