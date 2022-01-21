local set_keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- nnn
set_keymap('n', '<M-n>', ':NnnPicker %:p:h<CR>', opts)
-- Tabs
set_keymap('n', '<C-t>', ':tabnew<CR>', opts)
set_keymap('n', '<C-q>', ':tabclose', { noremap = true })
set_keymap('n', '<C-l>', ':tabnext<CR>', opts)
set_keymap('n', '<C-h>', ':tabprevious<CR>', opts)
set_keymap('n', '<C-M-l>', ':tabmove +1<CR>', opts)
set_keymap('n', '<C-M-h>', ':tabmove -1<CR>', opts)
-- Move split
set_keymap('n', '<M-k>', '<C-w><C-k>', opts)
set_keymap('n', '<M-l>', '<C-w><C-l>', opts)
set_keymap('n', '<M-j>', '<C-w><C-j>', opts)
set_keymap('n', '<M-h>', '<C-w><C-h>', opts)
set_keymap('t', '<M-k>', '<C-\\><C-n><C-w><C-k>', opts)
set_keymap('t', '<M-l>', '<C-\\><C-n><C-w><C-l>', opts)
set_keymap('t', '<M-j>', '<C-\\><C-n><C-w><C-j>', opts)
set_keymap('t', '<M-h>', '<C-\\><C-n><C-w><C-h>', opts)
-- Resize split
set_keymap('n', '<M-K>', ':resize +5<CR>', opts)
set_keymap('n', '<M-L>', ':vertical resize +5<CR>', opts)
set_keymap('n', '<M-J>', ':resize -5<CR>', opts)
set_keymap('n', '<M-H>', ':vertical resize -5<CR>', opts)
-- Close window
set_keymap('n', '<M-q>', ':quit<CR>', opts)
set_keymap('t', '<M-q>', '<C-\\><C-n>:quit<CR>', opts)
-- Terminal
set_keymap('n', 'tx', ':new term://zsh<CR>', opts)
set_keymap('n', 'tv', ':vnew term://zsh<CR>', opts)
set_keymap('t', '<Esc><Esc>', '<C-\\><C-n>', opts)
-- Miscellaneous
set_keymap('n', '<C-Space>', ':nohlsearch<CR>', opts)
