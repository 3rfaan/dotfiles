-- Search
vim.keymap.set("n", "<Esc>", vim.cmd.nohlsearch, { desc = "Clear search highlight" })

-- Diagnostics
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic message" })

-- Focus windows
vim.keymap.set("n", "<leader>h", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader>l", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader>j", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader>k", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- MiniFiles
vim.keymap.set("n", "<leader>-", function() MiniFiles.open() end, { desc = "Open MiniFiles" })
