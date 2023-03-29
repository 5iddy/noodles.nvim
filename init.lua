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
        { import = "plugins.core" },
        { import = "plugins.sugar" },
        { import = "plugins.code" },
        { import = "plugins.editor" },
        { import = "plugins.lang.markdown" },
        { import = "plugins.lang.rust" },
        -- TODO: Add support for Awesome WM in lua config
        { import = "plugins.lang.lua" }
        -- TODO: Add support for python
        -- TODO: Add support for julia
        -- TODO: Add support for c/c++
        -- TODO: Add support for sh/bash/zsh
}, lazyopts)

for _, value in pairs({ "options", "keymaps", "autocmds" }) do
    require(value)
end


vim.cmd [[au BufWritePre * let &bex = '_' . strftime("%F.%H:%M")]]
