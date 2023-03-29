return {
    {
        'nvim-treesitter/nvim-treesitter',
        version = false,
        build = ":TSUpdate",
        event = "BufReadPost",
        keys = {
            { "gnn", desc = "Increment selection" },
            { "gnb", desc = "Schrink selection", mode = "x" },
        },
        config = function ()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    "help",
                    "lua",
                    "python",
                    "rust",
                    "bash",
                    "c",
                    "cpp",
                    "cmake",
                    "css",
                    "dockerfile",
                    "diff",
                    "go",
                    "hjson",
                    "json",
                    "json5",
                    "javascript",
                    "html",
                    "julia",
                    "make",
                    "markdown_inline",
                    "regex",
                    "sql",
                    "toml",
                    "yaml",
                    "vim",
                    "vue",
                    "typescript"
                },
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                incremental_selection = {
                    enable = false,
                },
                ident = { enable = true },
                rainbow = {
                    enable = true,
                    extended_mode = true,
                    max_file_lines = nil,
                }
            }
        end
    }
}
