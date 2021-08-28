local set_keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- nnn
set_keymap('n', '<C-n>', ':NnnPicker %:p:h<CR>', opts)
-- Tabs
set_keymap('n', '<C-t>', ':tabnew<CR>', opts)
set_keymap('n', '<C-q>', ':quit<CR>', opts)
set_keymap('n', '<C-l>', ':tabnext<CR>', opts)
set_keymap('n', '<C-h>', ':tabprevious<CR>', opts)
set_keymap('n', '<C-j>', ':tabmove -1<CR>', opts)
set_keymap('n', '<C-k>', ':tabmove +1<CR>', opts)
-- Resize split
set_keymap('n', '<M-l>', ':vertical resize +5<CR>', opts)
set_keymap('n', '<M-h>', ':vertical resize -5<CR>', opts)
set_keymap('n', '<M-k>', ':resize +5<CR>', opts)
set_keymap('n', '<M-j>', ':resize -5<CR>', opts)
-- Terminal
set_keymap('n', '<M-t>x', ':new term://zsh<CR>', opts)
set_keymap('n', '<M-t>v', ':vnew term://zsh<CR>', opts)
set_keymap('t', '<M-`>', '<C-\\><C-n>', { noremap = true })
-- Miscellaneous
set_keymap('n', 'C-Space', 'nohlsearch<CR>', opts)
