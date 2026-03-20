return {
    "f-person/auto-dark-mode.nvim",
    config = function()
        require("auto-dark-mode").setup({
            set_dark_mode = function()
                vim.cmd("colorscheme duskfox")
            end,
            set_light_mode = function()
                vim.cmd("colorscheme dayfox")
            end,
        })
    end
}
