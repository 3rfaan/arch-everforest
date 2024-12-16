-- ██╗   ██╗ █████╗ ███████╗██╗
-- ╚██╗ ██╔╝██╔══██╗╚══███╔╝██║
--  ╚████╔╝ ███████║  ███╔╝ ██║
--   ╚██╔╝  ██╔══██║ ███╔╝  ██║
--    ██║   ██║  ██║███████╗██║
--    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝
--
-- Yazi Config File by Arfan Zubi

require("full-border"):setup()

require("relative-motions"):setup({ show_numbers = "relative" })

require("bookmarks"):setup({
    last_directory = { enable = true },
    persist = "all",
    desc_format = "parent",
    file_pick_mode = "parent",
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
