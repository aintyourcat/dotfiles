vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = '[U]ndotree toggle'})

vim.keymap.set('n', '<leader>ne', '<Cmd>NnnExplorer %:p:h<CR>', { desc = '[N]nn[E]xplorer (cwd)' })
vim.keymap.set('n', '<leader>np', vim.cmd.NnnPicker, { desc = '[N]nn[P]icker' })

vim.keymap.set('v', '>', '>gv', { desc = 'Shift selection rightwards' })
vim.keymap.set('v', '<', '<gv', { desc = 'Shift selection leftwards' })

vim.keymap.set({ 'n', 'x' }, '<leader>sr', function() require('ssr').open() end)
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

