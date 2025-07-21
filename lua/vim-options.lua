vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.g.mapleader = " "
vim.g.background= "light"

vim.keymap.set('n', '<leader>t', ':botright new | resize 10 | terminal<CR>', {})
vim.cmd("set clipboard=unnamedplus")

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- From Gemini:

-- Key mappings for copy and paste using <leader> key
vim.keymap.set("v", "<leader>y", "\"+y") -- Visual mode: <leader>y copies to system clipboard
vim.keymap.set("n", "<leader>y", "\"+yy") -- Normal mode: <leader>y copies line to system clipboard
vim.keymap.set("n", "<leader>p", "\"+p") -- Normal mode: <leader>p pastes from system clipboard
