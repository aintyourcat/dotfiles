vim.o.clipboard = 'unnamedplus'
vim.o.smartindent = true
vim.wo.number = true
vim.o.relativenumber = true
vim.o.title = true
vim.o.breakindent = true
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.scrolloff = 5
vim.o.laststatus = 3
vim.o.undofile = true

vim.o.hlsearch = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
