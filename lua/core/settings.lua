local opt = vim.opt
local cmd = vim.cmd

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.autoindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.encoding = "UTF-8"
opt.visualbell = true
opt.scrolloff = 5
opt.termguicolors = true

cmd("colorscheme iceberg")
