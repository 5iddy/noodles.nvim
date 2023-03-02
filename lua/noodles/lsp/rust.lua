local M = {}

function M.config()
    local lspopts = require 'noodles.lsp.opts'
    local rt = require 'rust-tools'
    local rtdap = require 'rust-tools.dap'
    local function on_attach(client, buffer)
        lspopts.on_attach(client, buffer)
        vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { remap = false, silent = true, buffer = buffer })
    end

    local codelldb_path = "/usr/bin/codelldb"
    local liblldb_path = "/usr/lib/liblldb.so"

    local opts = {
        tools = {
            runnables = { use_telescope = true },
            inlay_hints = {
                parameter_hints_prefix = 'ﲖ',
                auto = true,
                show_parameter_hints = false,
                other_hints_prefix = ''
            },
            hover_actions = { auto_focus = true },
        },
        server = {
            cmd = { "rustup", "run", "stable", "rust-analyzer" },
            on_attach = on_attach,
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = {
                        command = "clippy"
                    },
                    procMacro = {
                        enable = true
                    },
                    cargo = {
                        buildScripts = {
                            enable = true,
                        },
                    },
                }
            }
        },
        dap = {
            adapter = rtdap.get_codelldb_adapter(codelldb_path, liblldb_path)
        },
    }

    rt.setup(opts)
end

return M
