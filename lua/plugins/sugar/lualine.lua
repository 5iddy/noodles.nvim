local opts = {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        section_separators = { left = '', right = '' },
        -- component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = '' },
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 300,
            tabline = 300,
            winbar = 300,
        }
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 2 }
        },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'lsp_progress' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { { 'filename', seperator = { left = '' }, right_padding = 2 } },
        lualine_z = {
            { 'location', separator = { right = '' }, left_padding = 2 }
        },
    },
    inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    }
}

return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'arkav/lualine-lsp-progress',
        },
        event= "VeryLazy",
        opts = opts
    },
}
