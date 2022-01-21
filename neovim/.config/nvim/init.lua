local cmd = vim.cmd

require('options')
require('plugins')
require('mappings')

cmd('runtime autocmds.vim')
cmd('colorscheme modus-operandi')
