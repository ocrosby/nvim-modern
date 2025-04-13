-- omar/plugins.lua
-- Plugin configuration (LSP, DAP, language support)

-- LSP Setup
local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "gopls" },
    automatic_installation = true,
})

-- LSP servers
lspconfig.pyright.setup {}
lspconfig.gopls.setup {}

-- Completion Setup
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
        { name = "nvim_lsp" },
    },
})

-- Treesitter
require("nvim-treesitter.configs").setup({
    ensure_installed = { "python", "go", "lua", "json", "yaml", "bash" },
    highlight = { enable = true },
})

-- DAP for Python
require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")

-- Go setup
require("go").setup()
