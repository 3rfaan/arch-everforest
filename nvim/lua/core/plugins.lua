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

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -------- Appearance
    {
        "neanias/everforest-nvim", -- Everforest theme
        lazy = false,
        priority = 1000,
    },

    "3rfaan/alpha-nvim-everforest", -- Startup screen
    "nvim-lualine/lualine.nvim",    -- Status line

    -------- Neovim Tools
    "mbbill/undotree", -- Undo tree

    {
        "nvim-tree/nvim-tree.lua", -- Nvim Tree, NerdTree alternative
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        "nvim-treesitter/nvim-treesitter", -- Treesitter
        build = ":TSUpdate"
    },
    {
        "hrsh7th/nvim-cmp", -- Auto completion
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",

            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        }
    },
    {
        "nvim-telescope/telescope.nvim", -- Telescope
        tag = "0.1.4",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "smartpde/telescope-recent-files",
            "tom-anders/telescope-vim-bookmarks.nvim"
        }
    },

    ------- LSP
    "williamboman/mason.nvim",           -- LSP packet manager
    "williamboman/mason-lspconfig.nvim", -- lspconfig integration
    "neovim/nvim-lspconfig",             -- LSP configuration

    ------- Debugging
    {
        "rcarriga/nvim-dap-ui", -- Debugger
        dependencies = { "mfussenegger/nvim-dap" }
    },

    ------- Editing Tools
    "windwp/nvim-autopairs",               -- Auto closing brackets, parenthesis etc.
    "alvan/vim-closetag",                  -- Auto closing HTML tags
    "lukas-reineke/indent-blankline.nvim", -- Line highlighting
    "norcalli/nvim-colorizer.lua",         -- Hex color highlighting
    "MattesGroeger/vim-bookmarks",         -- Bookmarks
    "lewis6991/gitsigns.nvim",             -- Git signs
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    }
})
