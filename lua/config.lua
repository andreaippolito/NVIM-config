vim.opt.nu = true
--vim.opt.relativenumber = true
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir =vim.fn.stdpath("data") .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

--vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "200"

vim.g.mapleader = " "

-- Set GUI font for Neovim GUI clients like Neovide
vim.o.guifont = "JetBrainsMono Nerd Font:h09"
vim.g.have_nerd_font = true
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Copy just the filename
vim.api.nvim_create_user_command('Fpc', function()
    local filename = vim.fn.expand('%:t')
    vim.fn.setreg('+', filename)
    print('Copied filename: ' .. filename)
end, {})

-- Copy full file path
vim.api.nvim_create_user_command('Ffpc', function()
    local filepath = vim.fn.expand('%:p')
    vim.fn.setreg('+', filepath)
    print('Copied full path: ' .. filepath)
end, {})
--
-- Map leader + h/j/k/l to move to splits in those directions
vim.keymap.set('n', '<leader>h', '1<C-w>w', { desc = 'Go to split 1' })
vim.keymap.set('n', '<leader>j', '2<C-w>w', { desc = 'Go to split 2' })
vim.keymap.set('n', '<leader>k', '3<C-w>w', { desc = 'Go to split 3' })
vim.keymap.set('n', '<leader>l', '4<C-w>w', { desc = 'Go to split 4' })

vim.keymap.set('n', '<leader>o', '<cmd>vsplit<cr>', { desc = 'Open vertical split' })
vim.keymap.set('n', '<leader>p', '<cmd>close<cr>', { desc = 'Close current window' })
