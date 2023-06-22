--open terminal(s) in the window
vim.keymap.set('n', '<C-M>', ':FloatermNew --height=0.35 --wintype=normal --name=capybara --position=bottom<CR>', opts)
vim.keymap.set('n', '<leader>tl', ':FloatermNew! --width=0.5 --wintype=vsplit --name=capybara --position=left<CR>', opts)
vim.keymap.set('n', '<leader>tr', ":FloatermNew! --width=0.49 --wintype=vsplit --name=capybara --position=right<CR>", opts)

