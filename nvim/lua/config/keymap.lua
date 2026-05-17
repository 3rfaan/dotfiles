-- Search
vim.keymap.set("n", "<Esc>", vim.cmd.nohlsearch, { desc = "Clear search highlight" })

-- Diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic message" })
vim.keymap.set("n", "<leader>td", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle diagnostics" }
)

-- Inline hints
vim.keymap.set("n", "<leader>th", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle inline hints" })

-- Wrap
vim.keymap.set("n", "<leader>tw", function()
  vim.wo.wrap = not vim.wo.wrap
end, { desc = "Toggle wrap" })

-- Focus windows
vim.keymap.set("n", "<leader>h", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader>l", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader>j", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader>k", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Goto
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })

-- Autocomplete
vim.keymap.set("i", "<CR>", function()
  local info = vim.fn.complete_info({ "selected" })

  if info.selected ~= -1 then return "<C-y>" end
  if MiniPairs then return MiniPairs.cr() end
  return "<CR>"
end, { expr = true })

-- Undotree
vim.keymap.set("n", "<leader>u", function()
  require("undotree").open()
end, { desc = "Open Undotree" })

-- MiniFiles
vim.keymap.set("n", "<leader>-", function() MiniFiles.open() end, { desc = "Open MiniFiles" })

-- MiniDiff
vim.keymap.set("n", "<leader>md", function() MiniDiff.toggle_overlay() end, { desc = "Show diff details" })

-- MiniPick
vim.keymap.set("n", "<leader>ff", function() MiniPick.builtin.files() end, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", function() MiniPick.builtin.grep_live() end, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", function() MiniPick.builtin.buffers() end, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", function() MiniPick.builtin.help() end, { desc = "Find help tags" })
