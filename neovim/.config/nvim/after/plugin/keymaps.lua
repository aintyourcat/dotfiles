vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })

vim.keymap.set('v', '>', '>gv', { desc = 'Shift selection rightwards' })
vim.keymap.set('v', '<', '<gv', { desc = 'Shift selection leftwards' })

vim.keymap.set('n', '[b', '<cmd>bprevious<cr>')
vim.keymap.set('n', ']b', '<cmd>bnext<cr>')
vim.keymap.set('n', '[B', '<cmd>bfirst<cr>')
vim.keymap.set('n', ']B', '<cmd>blast<cr>')

vim.keymap.set('n', '[t', '<cmd>tabprevious<cr>')
vim.keymap.set('n', ']t', '<cmd>tabnext<cr>')
vim.keymap.set('n', '[T', '<cmd>tabfirst<cr>')
vim.keymap.set('n', ']T', '<cmd>tablast<cr>')
