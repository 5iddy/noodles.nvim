local M = {}

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

capabilities.offsetEncoding = { "utf-8", "utf-16" }

capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }

capabilities.textDocument.completion.completionItem.snippetSupport = true

capabilities.textDocument.completion.completionItem.preselectSupport = true

capabilities.textDocument.completion.completionItem.insertReplaceSupport = true

capabilities.textDocument.completion.completionItem.labelDetailsSupport = true

capabilities.textDocument.completion.completionItem.deprecatedSupport = true

capabilities.textDocument.completion.completionItem.commitCharactersSupport = true

capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }

capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        "documentation",
        "detail",
        "additionalTextEdits",
    },
}

M.capabilities = capabilities

function M.on_attach(client, buffer)
    if client.server_capabilities["documentSymbolProvider"] then
        require("nvim-navic").attach(client, buffer)
    end

    local opts = { buffer = buffer, silent = true, noremap = true }

    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<localleader>gdf", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "<localleader>gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<localleader>gtd", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "<localleader>gtr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<localleader>gds", vim.lsp.buf.document_symbol, opts)
    vim.keymap.set("n", "<localleader>gws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<localleader>a", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<localleader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<localleader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<localleader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)

    vim.keymap.set('n', '<localleader>f', function()
        vim.lsp.buf.format { async = true }
    end, opts)

    -- rename
    vim.keymap.set('n', '<localleader>rn', vim.lsp.buf.rename, opts)

    -- Goto previous/next diagnostic warning/error
    vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "g]", vim.diagnostic.goto_next, opts)

    -- Show diagnostic popup on cursor hover
    local diag_float_grp = vim.api.nvim_create_augroup("DiagnosticFloat", { clear = true })
    vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
            vim.diagnostic.open_float(nil, { focusable = false })
        end,
        group = diag_float_grp,
    })
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            local bufnr = args.buf
            local lsp_sig_config = require 'lsp_signature'
            require 'lsp_signature'.on_attach(lsp_sig_config.opts, bufnr)
        end,
    })
end

return M
