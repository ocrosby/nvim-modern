-- omar/lazy.lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Colorscheme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- Set the colorscheme
            vim.cmd.colorscheme("tokyonight")

            -- Optional: fine-tune highlights
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },

    -- LSP
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- Completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- File explorer
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({
                view = {
                    width = 30,
                    side = "left",
                    --auto_resize = true,
                },
                filters = {
                    dotfiles = false,
                },
                git = {
                    enable = true,
                },
            })
        end
    },
    { "nvim-tree/nvim-web-devicons", lazy = true },

    -- Telescope
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",

    -- Debugging
    "mfussenegger/nvim-dap",

    -- Go support
    "ray-x/go.nvim",
    "ray-x/guihua.lua",

    -- Python support
    "mfussenegger/nvim-dap-python",
})
