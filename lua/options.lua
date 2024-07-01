require "nvchad.options"

local opt = vim.opt

opt.backup = false
opt.swapfile = false
opt.colorcolumn = "100"
opt.relativenumber = true
opt.list = true
opt.listchars = "tab:➝ ,lead:·,space:·,trail:·,nbsp:+,eol:¬"

-- feature toggles
vim.g.format_on_save = false
vim.g.copilot_enabled = true
vim.diagnostic.config({ virtual_text = false })
