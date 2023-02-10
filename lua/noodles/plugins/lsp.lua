return {
  {
    "neovim/nvim-lspconfig",
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

      lspconfig.sumneko_lua.setup({
        on_attach = require 'noodles.lsp.opts'.on_attach,
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
}
