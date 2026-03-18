-- Syntax highlighting
return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({
            "c",
            "css",
            "fish",
            "go",
            "html",
            "javascript",
            "lua",
            "python",
            "query",
            "rust",
            "svelte",
            "typescript",
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '<filetype>' },
            callback = function() vim.treesitter.start() end,
        })
    end
}
