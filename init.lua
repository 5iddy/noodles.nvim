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

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.termguicolors = true
local lazyopts = require "noodles.config.lazyopts"
require("lazy").setup(
    {
        { import = "noodles.plugins" }
    },
    lazyopts
)
require "noodles.config.options"
require "noodles.config.keymaps"
require "noodles.config.autocmds"

vim.cmd [[au BufWritePre * let &bex = '_' . strftime("%F.%H:%M")]]

