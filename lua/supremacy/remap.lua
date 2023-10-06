
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

--Global option for shorthand
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
    vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
    --for easier navigation of the panes
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')
    --yank to the system clipboard
--Copy
vim.keymap.set('v', '<leader>y'  , '"+y<cr>')
vim.keymap.set('n', '<leader>y'  , '"+y<cr>')
vim.keymap.set('n', '<leader>Y'  , '"+yg_<cr>')

    --instead of the above, I can use the greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

--move blocks of code
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

    --replace all instances of the word the cursor is on
vim.keymap.set('n', 'R', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--splitting the windows
vim.keymap.set('n', '<leader>wv', ':vsplit<cr> :wincmd l<CR>')
vim.keymap.set('n', '<leader>wh', ':split<cr> :wincmd j<CR>')
    --resizing windows
vim.keymap.set('n', '<c-Left>'  , ':vertical resize+3<cr>')
vim.keymap.set('n', '<c-Right>' , ':vertical resize-3<cr>')
vim.keymap.set('n', '<c-Up>'    , ':resize+3<cr>')
vim.keymap.set('n', '<c-Down>'  , ':resize-3<cr>')
end)

