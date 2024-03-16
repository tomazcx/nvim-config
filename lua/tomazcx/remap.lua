vim.g.mapleader = " "

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<C-f>', [[:Prettier<CR>]], { noremap = true, silent = true })

