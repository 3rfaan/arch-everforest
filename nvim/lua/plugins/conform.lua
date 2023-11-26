require("conform").setup({
    formatters_by_ft = {
        markdown = { "prettier" },
        ["*"] = { "codespell" },
        ["_"] = { "trim_whitespace" }
    },
    format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
    }
})
