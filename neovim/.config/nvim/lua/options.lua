local opt = vim.opt
local cmd = vim.cmd

opt.encoding = 'utf-8'
opt.clipboard = 'unnamedplus'
opt.completeopt = 'menuone,noselect'
opt.termguicolors = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.number = true
opt.relativenumber = true
opt.title = true
opt.splitright = true 
opt.splitbelow = true
opt.wrap = false
opt.cursorline = true
opt.cursorcolumn = true
opt.ignorecase = true
opt.smartcase = true

cmd 'colorscheme base16-tomorrow-night'