-- Syntax highlighting
return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter")

        treesitter.setup({
            install_dir = vim.fn.stdpath('data') .. '/site'
        })

        -- Ensure Installed
        treesitter.install({
            "c",
            "css",
            "fish",
            "go",
            "html",
            "javascript",
            "lua",
            "markdown",
            "python",
            "query",
            "rust",
            "svelte",
            "typescript",
            "vimdoc"
        })

        -- Highlighting
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '<filetype>' },
            callback = function() vim.treesitter.start() end,
        })

        -- Indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
}
