--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Arfan Zubi
-- INIT FILE

-- Variables
opt = vim.opt
g = vim.g
kmap = vim.keymap
cmd = vim.cmd

-- Leader key
g.mapleader = ","

-- Imports
require("core.lazy")                -- lazy.nvim plugin manager
require("core.plugins")             -- Plugins

require("core.settings")            -- Editor settings
require("core.setups")              -- Setup of plugins
require("core.mappings")            -- Mappings
require("core.scripts")             -- Scripts

require("plugins.lsp-config-setup") -- LSPconfig setup
require("plugins.mason")            -- Mason LSP & DAP servers
require("plugins.nvim-cmp")         -- Autocompletion
require("plugins.treesitter")       -- Treesitter syntax highlighting
require("plugins.conform")          -- Formatter
require("plugins.gitsigns-config")  -- Gitsigns mappings
