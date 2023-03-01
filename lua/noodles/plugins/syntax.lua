return {
  {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    build = ":TSUpdate",
    event = "BufReadPost",
    keys = {
      { "gnn", desc = "Increment selection" },
      { "gnb", desc = "Schrink selection", mode = "x" },
    },
    config = function ()
      local opts = require 'noodles/config/nvim-treesitter'
      require 'nvim-treesitter.configs'.setup(opts)
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    event = "VeryLazy",
    opts = { 'html', 'css', 'vim', 'javascript', 'lua', 'vue' },
  },
}
