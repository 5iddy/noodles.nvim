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
        { name = 'path', keyword_length = 1 },
        { name = 'nvim_lsp', keyword_length = 1 },
        { name = 'nvim_lsp_signature_help', keyword_length = 1 },
        { name = 'nvim_lua', keyword_length = 1 },
        { name = 'buffer', keyword_length = 1 },
        { name = 'luasnip', keyword_length = 1 },
        { name = 'calc', keyword_length = 1 },
        {
            name = 'look',
            keyword_length = 2,
            option = { convert_case = true, loud = true }
        },
        {
            name = 'spell',
            keyword_length = 3,
            option = { keep_all_entries = false }
        },
        { name = 'dictionary', keyword_length = 1 },
        { name = 'nerdfont', keyword_length = 1 },
        { name = "emoji", keyword_length = 1 },
        { name = 'zsh', keyword_length = 1 }
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
