return {
  {
    'simrat39/rust-tools.nvim',
    ft = "rust",
    dependencies = {
        'mfussenegger/nvim-dap',
        'nvim-lua/plenary.nvim'
    },
    config = require 'noodles/lsp/rust'.config
  },
}
