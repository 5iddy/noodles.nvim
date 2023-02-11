require 'noodles/core/bootstrap'

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
-- require "noodles.core.autocomplete"

require "onedark".load()
-- require "tokyonight".load()
vim.cmd [[au BufWritePre * let &bex = '_' . strftime("%F.%H:%M")]]

