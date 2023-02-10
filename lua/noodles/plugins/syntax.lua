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
    init = function()
      vim.opt.foldmethod = 'expr'
      vim.opt.foldenable = false
      vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    end,
    config = function ()
      local opts = require 'noodles/config/nvim-treesitter'
      require 'nvim-treesitter.configs'.setup(opts)
    end
  },
}
