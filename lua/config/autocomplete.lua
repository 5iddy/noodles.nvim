local cmp = require 'cmp'
local M = {}

M.snippet = {
    expand = function(args)
        require("luasnip").lsp_expand(args.body)
    end,
}

M.mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete({}),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        })
}

M.sources = cmp.config.sources({
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
        { name = 'dictionary'},
        { name = 'nerdfont'},
        { name = "emoji"},
        { name = 'zsh'}
    })

M.window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered()
}

M.formatting = {
    fields = { 'menu', 'abbr', 'kind' },
    format = require 'lspkind'.cmp_format({mode="symbol"})
}

M.completion = { completeopt = 'menu,menuone,noinsert,noselect' }


return M
