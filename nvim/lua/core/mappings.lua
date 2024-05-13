--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Arfan Zubi
-- MAPPINGS

-- Open new terminal
kmap.set("n", "<leader>t", ":split | terminal<cr>")

-- Redo
kmap.set("n", "U", "<C-r>")

-- Split navigation using CTRL + {j, k, h, l}
kmap.set("n", "<c-k>", "<c-w>k")
kmap.set("n", "<c-j>", "<c-w>j")
kmap.set("n", "<c-l>", "<c-w>l")
kmap.set("n", "<c-h>", "<c-w>h")

-- Resize split windows using arrow keys
kmap.set("n", "<c-up>", "<c-w>-")
kmap.set("n", "<c-down>", "<c-w>+")
kmap.set("n", "<c-right>", "<c-w>>")
kmap.set("n", "<c-left>", "<c-w><")

-- NerdTree
kmap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)

-- Undo Tree
kmap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)

-- Markdown Preview
kmap.set("n", "<leader>mp", vim.cmd.MarkdownPreview)

-- Telescope
local builtin = require("telescope.builtin")
local extensions = require("telescope").extensions

kmap.set("n", "<leader>ff", builtin.find_files, {})
kmap.set("n", "<leader>fg", builtin.live_grep, {})
kmap.set("n", "<leader>fb", builtin.buffers, {})
kmap.set("n", "<leader>fh", builtin.help_tags, {})

kmap.set("n", "<leader>rf", extensions.recent_files.pick, {})
kmap.set("n", "<leader>fm", extensions.vim_bookmarks.all, {})
kmap.set("n", "<leader>fm-", extensions.vim_bookmarks.current_file, {})
