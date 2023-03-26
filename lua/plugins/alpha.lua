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
                dashboard.button( "e", "  New file" , "<CMD>ene<CR>"),
                dashboard.button( "c", "  Open Nvim Config Dir", "<CMD>cd ~/.config/nvim | NeoTreeFloat<CR>"),
                dashboard.button( "a", "  Open Awesome Config Dir", "<CMD>cd ~/.config/awesome | NeoTreeFloat<CR>"),
                dashboard.button( "C", "  Open Vim Config Dir", "<CMD>cd ~/.vim | NeoTreeFloat<CR>"),
                dashboard.button( "z", "  Open Zshrc Config", "<CMD>e ~/.zshrc<CR>"),
                dashboard.button( "Z", "  Open Zshrc Config", "<CMD>cd ~/.config/zsh | NeoTreeFloat<CR>"),
                dashboard.button( "A", "  Open Alacritty Config", "<CMD>e ~/.config/alacritty/alacritty.yml<CR>"),
                dashboard.button( "<leader>ff", "  Find Files"),
                dashboard.button( "<leader>fr", "  Find Recent Files"),
                dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
            }
            alpha.setup(dashboard.config)
        end
    },
}
