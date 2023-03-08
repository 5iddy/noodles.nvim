return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "glepnir/lspsaga.nvim",
            'ray-x/lsp_signature.nvim'
        }
    },
    {
        "folke/neodev.nvim",
        lazy = true,
        ft = "lua",
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        config = function()
            require "neodev".setup {}
            -- then setup your lsp server as usual
            local lspconfig = require('lspconfig')
            local lspopts = require 'noodles.lsp.opts'
            lspconfig.lua_ls.setup({
                capabilities = lspopts.capabilities,
                on_attach = lspopts.on_attach,
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace"
                        }
                    }
                }
            })
        end
    },
    {
        "glepnir/lspsaga.nvim",
        config = true,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "neovim/nvim-lspconfig"
        }
    }
}
