vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })

vim.keymap.set('v', '>', '>gv', { desc = 'Shift selection rightwards' })
vim.keymap.set('v', '<', '<gv', { desc = 'Shift selection leftwards' })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

vim.keymap.set('n', '[b', '<cmd>bprevious<cr>')
vim.keymap.set('n', ']b', '<cmd>bnext<cr>')
vim.keymap.set('n', '[B', '<cmd>bfirst<cr>')
vim.keymap.set('n', ']B', '<cmd>blast<cr>')

vim.keymap.set('n', '[t', '<cmd>tabprevious<cr>')
vim.keymap.set('n', ']t', '<cmd>tabnext<cr>')
vim.keymap.set('n', '[T', '<cmd>tabfirst<cr>')
vim.keymap.set('n', ']T', '<cmd>tablast<cr>')
