return {
    {
        'goolord/alpha-nvim',
        lazy = false,
        config = function ()
            local alpha = require 'alpha'
            local dashboard = require 'alpha.themes.dashboard'
            dashboard.section.buttons.val = {
                dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
                dashboard.button( "<leader>ff", " Find Files"),
                dashboard.button( "<leader>fg", " Find Git Files"),
                dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
            }
            alpha.setup(dashboard.config)
        end
    },
}
