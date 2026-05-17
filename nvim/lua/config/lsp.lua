vim.diagnostic.config({
  virtual_text = true,
})

vim.lsp.config("oxfmt", {
  workspace_required = false,
})

vim.lsp.config("oxlint", {
  workspace_required = false,
})

vim.lsp.enable({
  "clangd",
  "emmet_language_server",
  "lua_ls",
  "oxfmt",
  "oxlint",
  "rust_analyzer",
  "svelte",
  "ts_ls",
  "vimdoc_ls",
})
