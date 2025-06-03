-- Relative Motions
require("relative-motions"):setup({
    show_numbers = "relative",
    show_motion = true,
    enter_mode = "first"
})

-- Bookmarks
require("bookmarks"):setup({
    last_directory = { enable = true, persist = true, mode = "dir" },
    persist = "all",
    notify = {
        enable = true,
        timeout = 1,
        message = {
            new = "New bookmark '<key>' -> '<folder>'",
            delete = "Deleted bookmark in '<key>'",
            delete_all = "Deleted all bookmarks",
        },
    },
})
