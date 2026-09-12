vim.pack.add({
    "https://github.com/saghen/blink.lib", -- dependency for blink.cmp
    "https://github.com/saghen/blink.cmp",
    "https://github.com/rafamadriz/friendly-snippets",
})

local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup()

