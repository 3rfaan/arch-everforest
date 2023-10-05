--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Arfan Zubi
-- SETUPS

-- NvimTree
require("nvim-tree").setup()

-- DAP UI
require("dapui").setup()

-- Alpha start screen / dashboard
require("alpha").setup(require("alpha.themes.dashboard").config)
require("alpha.themes.dashboard").section.footer.val = require("alpha.fortune")() -- Quotes

-- Everforest theme
require("everforest").setup({
    background = "medium",
    transparent_background_level = 0,
})

-- Lualine status bar
require("lualine").setup({
    options = {
        component_separators = " ",
        section_separators = { left = "", right = "" },
    },
})

-- Nvim Autopairs
require("nvim-autopairs").setup()

-- Git signs
require("gitsigns").setup()

-- Line highlighting
require("ibl").setup({
    indent = { char = "┊" },
    scope = { enabled = false },
})

-- Hex color highlighting
require("colorizer").setup()
