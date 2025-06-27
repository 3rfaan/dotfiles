-- Diagnostics
vim.diagnostic.config({
    virtual_lines = false,
    virtual_text = true,      -- Show diagnostics inline
    underline = true,
    update_in_insert = false, -- Don't update diagnostics in insert mode
    severity_sort = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        }
    }
})

-- Rust
vim.lsp.config("rust_analyzer", {
    settings = {
        ["rust-analyzer"] = {
            rustfmt = {
                overrideCommand = { "dx", "fmt", "--all-code", "-f", "-" },
            }

        }
    }
})

-- Lua
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "blink" }
            }
        }
    }
})
