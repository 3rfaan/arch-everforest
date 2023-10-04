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

-- Imports
require("core.plugins")             -- Plugins
require("core.settings")            -- Editor settings
require("core.setups")              -- Setup of plugins
require("core.mappings")            -- Mappings
require("core.scripts")             -- Scripts

require("plugins.mason")            -- Mason LSP & DAP servers
require("plugins.lsp-config-setup") -- LSPconfig setup
require("plugins.dap")              -- Debug Adapter Protocol
require("plugins.nvim-cmp")         -- Autocompletion
require("plugins.treesitter")       -- Treesitter syntax highlighting
require("plugins.gitsigns-config")  -- Gitsigns mappings
