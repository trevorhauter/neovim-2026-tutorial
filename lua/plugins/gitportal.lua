vim.pack.add({ "https://codeberg.org/trevorhauter/gitportal.nvim" })

local gitportal = require("gitportal")

gitportal.setup({
    always_use_commit_hash_in_url = true,
})

vim.keymap.set({ "n", "v" }, "<leader>gp", gitportal.to_remote)
vim.keymap.set("n", "<leader>ig", gitportal.from_remote)
vim.keymap.set({ "n", "v" }, "<leader>gc", gitportal.clip_remote)
