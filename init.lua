local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

-- not sure why this fixes bash. From chatGPT

require('lspconfig').bashls.setup({
  cmd = {
    'node',
    '--experimental-wasm-reftypes',
    vim.fn.stdpath('data') .. '/mason/packages/bash-language-server/node_modules/.bin/bash-language-server',
    'start',
  },
})

