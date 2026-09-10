vim.pack.add({
    "https://codeberg.org/andyg/leap.nvim",
    "https://github.com/tpope/vim-repeat",
})

vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap)")
vim.keymap.set("n", "S", "<Plug>(leap-from-window)")

require("leap").opts.preview = function(ch0, ch1, ch2)
    return not (
        ch1:match("%s")
        or (ch0:match("%a") and ch1:match("%a") and ch2:match("%a"))
    )
end

-- Enable the traversal keys to repeat the previous search without
-- explicitly invoking Leap (`<cr><cr>...` instead of `s<cr><cr>...`):
do
    local clever = require("leap.user").with_traversal_keys
    vim.keymap.set({ "n", "x", "o" }, "<cr>", function()
        require("leap").leap({
            ["repeat"] = true,
            opts = clever("<cr>", "<bs>"),
        })
    end)
    vim.keymap.set({ "n", "x", "o" }, "<bs>", function()
        require("leap").leap({
            ["repeat"] = true,
            opts = clever("<bs>", "<cr>"),
            backward = true,
        })
    end)
end
