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
  -- {{{
  {
    "EdenEast/nightfox.nvim",
    lazy = false
  },
  {
    'folke/tokyonight.nvim',
    lazy = false
  },
  {
    'navarasu/onedark.nvim',
    lazy = false
  },

  -- }}}
  {
    'nvim-tree/nvim-tree.lua',
    lazy=false,
    config = true
  },
  {
    'stevearc/dressing.nvim',
    event = "VeryLazy",
    config = true
  },
  {
    "neovim/nvim-lspconfig",
    lazy=false
  },
  {
    "folke/neodev.nvim",
    lazy = true,
    ft = "lua",
    config = function()
      require "neodev".setup {}
      -- then setup your lsp server as usual
      local lspconfig = require('lspconfig')

      lspconfig.sumneko_lua.setup({
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
    'norcalli/nvim-colorizer.lua',
    opts = { 'html', 'css', 'vim', 'javascript', 'lua', 'vue' },
  },
  {
    'goolord/alpha-nvim',
    lazy = false,
    config = function ()
        require 'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },
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
    'karb94/neoscroll.nvim',
    lazy = false,
    cond = function ()
      if vim.g.neovide then return false else return true end
    end,
    config = true
  },
  {
    'jghauser/follow-md-links.nvim',
    ft = "markdown"
  },
  { 'michaelb/sniprun', build = 'bash ./install.sh' },
  {
    'simrat39/rust-tools.nvim',
    lazy = true,
    ft = "rust",
    config = require 'noodles/lsp/rust'.config
  },
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-buffer',
  'hrsh7th/vim-vsnip',
  'octaltree/cmp-look',
  'hrsh7th/cmp-calc',
  'f3fora/cmp-spell',
  {'uga-rosa/cmp-dictionary',
    lazy = false,
    opts = {
      dic = { ["*"] = "/home/noodles/dictionaries/en_us.dict" }
    }
  },
  'chrisgrieser/cmp-nerdfont',
  'hrsh7th/cmp-emoji',
  {
    'tamago324/cmp-zsh',
    lazy = false,
    config = function ()
      require 'cmp_zsh'.setup({ zshrc = true, filetypes = { "zsh" } })
    end
  },
  {'onsails/lspkind.nvim', lazy = false },
}
