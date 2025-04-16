vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)


local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>')

