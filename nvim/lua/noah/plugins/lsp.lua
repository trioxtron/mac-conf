return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true},

        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },

    config = function()
        local mason = require("mason")

        local mason_lspconfig = require("mason-lspconfig")

        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local bufopts = { noremap = true, silent = true }
        local on_attach = function(client, bufnr)
            bufopts.buffer = bufnr

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
            vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end, bufopts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, bufopts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, bufopts)

            -- Restart lsp
            vim.keymap.set("n", "<leader>gs", ":LspRestart<CR>", bufopts)
        end
        local capabilities = cmp_nvim_lsp.default_capabilities()

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                }
            }
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "lua_ls",
                "gopls",
            },

            -- auto-install configured servers (with lspconfig)
            automatic_installation = true,

            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                    })
                end
            }
        })

        lspconfig["lua_ls"].setup({
            settings = {
                Lua = {
                    diagnostics = { globals = { 'vim' }}
                }
            }
        })

        lspconfig["yamlls"].setup({
            settings = {
                yaml = {
                    keyOrdering = false
                }
            }
        })
    end
}
