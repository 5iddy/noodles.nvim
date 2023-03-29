local config = function ()
    require "neodev".setup {}
    -- then setup your lsp server as usual
    local lspconfig = require('lspconfig')
    local lspopts = require 'config.lspopts'
    lspconfig.lua_ls.setup({
        capabilities = lspopts.capabilities,
        on_attach = lspopts.on_attach,
        settings = {
            Lua = {
                workspace = {
                    library = {
                        '/usr/share/awesome/lib'
                    }
                },
                completion = {
                    enable = true,
                    callSnippet = "Replace"
                },
                diagnostics = {
                    enable = true,
                    globals = { 'vim', 'awesome', 'client', 'root', 'screen' }
                },
                telemetry = {
                    enable = false
                }
            }
        }
    })
end

return {
    {
        "folke/neodev.nvim",
        ft = "lua",
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        config = config
    },
}
