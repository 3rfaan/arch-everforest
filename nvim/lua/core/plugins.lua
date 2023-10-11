--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Arfan Zubi
-- PLUGINS

return require("packer").startup(function(use)
    -------- Packet Manager
    use("wbthomason/packer.nvim") -- Packer

    -------- Appearance
    use({
        "3rfaan/alpha-nvim-everforest",
        requires = { "nvim-tree/nvim-web-devicons" },
    })

    use("neanias/everforest-nvim") -- Everforest theme

    use({
        "nvim-lualine/lualine.nvim", -- Status line
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    -------- Neovim Tools
    use({
        "nvim-tree/nvim-tree.lua", -- Nvim Tree, NerdTree alternative
        requires = { "nvim-tree/nvim-web-devicons" },
    })

    use("mbbill/undotree") -- Undo Tree

    use({
        "nvim-treesitter/nvim-treesitter", -- Treesitter
        run = ":TSUpdate",
    })

    -- Autocompletion
    use({
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip",
    })

    use({
        "nvim-telescope/telescope.nvim", -- Telescope
        tag = "0.1.4",
        requires = { "nvim-lua/plenary.nvim" },
    })

    -- Telescope extensions
    use({ "smartpde/telescope-recent-files", "tom-anders/telescope-vim-bookmarks.nvim" })

    ------- Editing Tools
    use("windwp/nvim-autopairs")               -- Auto closing brackets, parenthesis etc.
    use("alvan/vim-closetag")                  -- Auto closing HTML tags
    use("lukas-reineke/indent-blankline.nvim") -- Line highlighting
    use("norcalli/nvim-colorizer.lua")         -- Hex color highlighting
    use("MattesGroeger/vim-bookmarks")         -- Bookmarks
    use("lewis6991/gitsigns.nvim")             -- Git signs

    ------- LSP
    use({
        "williamboman/mason.nvim",           -- LSP packet manager
        "williamboman/mason-lspconfig.nvim", -- lspconfig integration
        "neovim/nvim-lspconfig",             -- LSP configuration
    })

    ------- Debugging
    use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }) -- Debugger
end)
