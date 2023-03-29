local cmp_config = function ()
    local cmp = require 'cmp'
    local opts = {}

    local status, luasnip = pcall(require, 'luasnip')
    if status then
        opts.snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        }
    end

    opts.mapping = {
        ['<Up>'] = cmp.mapping.select_prev_item(),
        ['<Down>'] = cmp.mapping.select_next_item(),
        ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete({}),
        ['<Tab>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        })
    }

    opts.sources = cmp.config.sources({
        { name = 'path'},
        { name = 'nvim_lsp' },
        { name = 'nvim_lua'},
        { name = 'buffer'},
        { name = 'luasnip'},
        { name = 'calc'},
        {
            name = 'look',
            option = { convert_case = true, loud = true }
        },
        {
            name = 'spell',
            option = { keep_all_entries = false }
        },
        { name = 'dictionary' },
        { name = 'nerdfont' },
        { name = "emoji" },
        { name = 'zsh' }
    })

    opts.window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    }

    opts.formatting = {
        fields = { 'menu', 'abbr', 'kind' },
        format = require 'lspkind'.cmp_format { mode="symbol" }
    }

    opts.completion = { completeopt = 'menu,menuone,noinsert,noselect' }

    cmp.setup(opts)
end

return {
    {
        'hrsh7th/nvim-cmp',
        version=false,
        event = "InsertEnter",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'octaltree/cmp-look',
            'hrsh7th/cmp-calc',
            'f3fora/cmp-spell',
            {
                'uga-rosa/cmp-dictionary',
                opts = {
                    dic = { ["*"] = "/home/noodles/dictionaries/en_us.dict" }
                }
            },
            'chrisgrieser/cmp-nerdfont',
            'hrsh7th/cmp-emoji',
            { 'onsails/lspkind.nvim' },
            {
                'tamago324/cmp-zsh',
                opts = { zshrc = true, filetypes = { "zsh" } }
            },
        },
        config = cmp_config
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
            end,
        },
        opts = {
            history = true,
            delete_check_events = "TextChanged",
        },
    },
}
