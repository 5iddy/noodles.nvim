return {
    {
        'goolord/alpha-nvim',
        lazy = false,
        config = function ()
            local alpha = require 'alpha'
            local dashboard = require 'alpha.themes.dashboard'
            dashboard.section.header.val = {
                [[███╗  ██╗ █████╗  █████╗ ██████╗ ██╗     ███████╗ ██████╗]],
                [[████╗ ██║██╔══██╗██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝]],
                [[██╔██╗██║██║  ██║██║  ██║██║  ██║██║     █████╗  ╚█████╗ ]],
                [[██║╚████║██║  ██║██║  ██║██║  ██║██║     ██╔══╝   ╚═══██╗]],
                [[██║ ╚███║╚█████╔╝╚█████╔╝██████╔╝███████╗███████╗██████╔╝]],
                [[╚═╝  ╚══╝ ╚════╝  ╚════╝ ╚═════╝ ╚══════╝╚══════╝╚═════╝ ]],
            }
            dashboard.section.buttons.val = {
                dashboard.button( "e", "  New file" , ":ene<CR>"),
                dashboard.button( "c", "  Open Config Folder", "<CMD>cd ~/.config/nvim | NeoTreeFloat<CR>"),
                dashboard.button( "<leader>ff", "  Find Files"),
                dashboard.button( "<leader>fg", "  Find Git Files"),
                dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
            }
            alpha.setup(dashboard.config)
        end
    },
}
