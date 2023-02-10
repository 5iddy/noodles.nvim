return {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 }
    },
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {
        { 'location', separator = { right = '' }, left_padding = 2 }
    },
  },
  inactive_sections = {
    lualine_a = {{'filename', separator = { left = '' }, right_padding = 2 }},
    lualine_b = {'diagnostics'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {{ 'location', separator = { right = '' }, left_padding = 2 }}
  }
}
