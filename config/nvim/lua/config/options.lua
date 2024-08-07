-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.colorcolumn = "100"
opt.list = true
opt.listchars = { lead = "·", tab = "· ", trail = "·" }
opt.tabstop = 4
opt.winbar = "%=%m %f"
