local M = {}

function M.config()
    local lspopts = require 'noodles.lsp.opts'
    local rt = require 'rust-tools'

    local function on_attach(client, buffer)
        lspopts.on_attach(client, buffer)
        vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { remap=false, silent=true, buffer=buffer})
    end

    local opts = {
        tools = {
            runnables = { use_telescope = true },
            inlay_hints = {
                parameter_hints_prefix = 'ﲖ',
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
                    }
                }
            }
        },
        dap = {
            adapter = {
                type = "executable",
                command = "lldb-vscode",
                name = "rt_lldb",
            },
        },
    }

    rt.setup(opts)
end
return M
