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

local lazyopts = require "config.lazyopts"
require("lazy").setup({
	{ import = "plugins" }
}, lazyopts)

require "options"
require "keymaps"
require "autocmds"

vim.cmd [[au BufWritePre * let &bex = '_' . strftime("%F.%H:%M")]]
