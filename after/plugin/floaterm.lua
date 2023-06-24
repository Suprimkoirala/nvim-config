--open terminal(s) in the window
vim.keymap.set('n', '<C-O>', ':FloatermNew --height=0.4 --position=bottom<CR>', opts)
vim.keymap.set('n', '<leader>tl', ":FloatermNew --width=0.6 --position=left<CR>", opts)
vim.keymap.set('n', '<leader>tr', ":FloatermNew --wintype=vsplit --position=right<CR>", opts)
vim.keymap.set('n', '<leader>lg', ":FloatermNew lazygit<CR>", opts)
