require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        "pyright",
        "zls",
    },
    automatic_enable = true,
})
