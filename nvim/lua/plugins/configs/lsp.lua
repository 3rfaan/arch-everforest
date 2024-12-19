--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Arfan Zubi
-- LSP-CONFIG SETUP

-- Global mappings.
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        -- Buffer local mappings.
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP go to declaration" })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP go to definition" })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover window" })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP go to implementation" })
        vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, { desc = "LSP add workspace folder" })
        vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, { desc = "LSP remove workspace folder" })
        vim.keymap.set("n", "<space>wl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, { desc = "LSP list workspace folders" })
        vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, { desc = "LSP type definition" })
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "LSP rename" })
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
        vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "LSP references" })
        vim.keymap.set("n", "<space>f", function()
            vim.lsp.buf.format { async = true }
        end, { desc = "LSP format" })
    end,
})

local border = {
    { "╭", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╮", "FloatBorder" },
    { "│", "FloatBorder" },
    { "╯", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╰", "FloatBorder" },
    { "│", "FloatBorder" },
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or border
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
end
