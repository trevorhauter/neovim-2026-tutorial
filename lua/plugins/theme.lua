vim.pack.add({ "https://github.com/sainnhe/gruvbox-material" })

if vim.fn.has("termguicolors") == 1 then
    vim.opt.termguicolors = true
end

-- Theme specific plugin options
vim.g.gruvbox_material_enable_italic = true
vim.g.gruvbox_material_enable_bold = true

-- Can be used in tandem with a transparent terminal 
-- setup to make Neovim transparent!
vim.g.gruvbox_material_transparent_background = 1
vim.o.background = "dark"

vim.g.gruvbox_material_background = "soft"
vim.g.gruvbox_material_better_performance = 1

-- Important! This tells neovim what colorscheme to use
vim.cmd.colorscheme("gruvbox-material")
