local bright_blue = "#5fffff"
local bright_green = "#afff5f"
local dark_green = "#006011"
local dark_red = "#c15a55"

-- Customize apperance of eyeline.nvim
vim.api.nvim_set_hl(0, "EyelinerPrimary", { fg = bright_green, bold = true })
vim.api.nvim_set_hl(0, "EyelinerSecondary", { fg = bright_blue })

vim.api.nvim_set_hl(0, "GitSignsDeleteInline", { bg = dark_red })
vim.api.nvim_set_hl(0, "GitSignsChangeInline", { bg = dark_green })
vim.api.nvim_set_hl(0, "GitSignsAddInline", { bg = dark_green })
