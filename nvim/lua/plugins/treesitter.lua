-- Syntax highlighting
return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter")

        treesitter.setup()

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
