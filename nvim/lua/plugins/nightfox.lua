-- Colorscheme
return {
    "EdenEast/nightfox.nvim",
    config = function()
        require("nightfox").setup({
            options = {
                --transparent = true,
                styles = {
                    comments = "italic",
                    conditionals = "italic",
                    constants = "bold",
                    functions = "bold, italic",
                    keywords = "bold",
                    strings = "italic",
                    types = "bold",
                }
            }
        })
    end
}
