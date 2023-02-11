return {
  {
    "nvim-lua/plenary.nvim",
    lazy = false
  },
  {
    "folke/which-key.nvim",
    lazy = false,
    config = true
  },
  "nvim-tree/nvim-web-devicons",
  "tpope/vim-fugitive",
  
  
  {
    'rcarriga/nvim-notify',
    lazy = false,
    config = function ()
      vim.notify = require 'notify'
      vim.notify("Notification Plugin Loaded.")
    end
  },
  {
    'phaazon/mind.nvim',
    branch = 'v2.2',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = true
  },
  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    opts = require 'noodles.config.lualine'
  },
  {
    'windwp/nvim-autopairs',
    lazy = false,
    config =  true
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
    opts = {
      ignore = "^$"
    }
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    config = true
  },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
    config = function ()
      local opts = require 'noodles/config/nvim-treesitter'
      require 'nvim-treesitter.configs'.setup(opts)
    end
  },
  {
    'jghauser/follow-md-links.nvim',
    ft = "markdown"
  },
  { 'michaelb/sniprun', build = 'bash ./install.sh' },
}
