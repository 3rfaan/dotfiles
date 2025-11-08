-- LSP
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "clangd",
            "cssls",
            "html",
            "jsonls",
            "lua_ls",
            "rust_analyzer",
            "svelte",
            "taplo",
            "ts_ls",
        }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    }
}
