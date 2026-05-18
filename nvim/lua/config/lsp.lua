vim.lsp.config("oxfmt", {
  workspace_required = false,
})

vim.lsp.config("oxlint", {
  workspace_required = false,
})

vim.lsp.enable({
  "clangd",
  "emmet_language_server",
  "fish_lsp",
  "lua_ls",
  "oxfmt",
  "oxlint",
  "rust_analyzer",
  "ts_ls",
  "vimdoc_ls",
})
