vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = '[U]ndotree toggle'})

vim.keymap.set('n', '<leader>ne', '<Cmd>NnnExplorer %:p:h<CR>', { desc = '[N]nn[E]xplorer (cwd)' })
vim.keymap.set('n', '<leader>np', vim.cmd.NnnPicker, { desc = '[N]nn[P]icker' })

vim.keymap.set('v', '>', '>gv', { desc = 'Shift selection rightwards' })
vim.keymap.set('v', '<', '<gv', { desc = 'Shift selection leftwards' })

vim.keymap.set({ 'n', 'x' }, '<leader>sr', function() require('ssr').open() end)
