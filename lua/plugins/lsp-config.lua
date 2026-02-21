return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "matlab_ls" , "jsonls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.jsonls.setup({capabilities = capabilities })
            lspconfig.matlab_ls.setup({
                capabilities = capabilities,
                settings = {
                    matlab = {
                        installPath = "C:\\Program Files\\MATLAB\\R2021b", -- Adjust your path
                        linting = {
                            enabled = true,
                        },
                        completion = {
                            enabled = true,
                        }
                    }
                },
                root_dir = lspconfig.util.root_pattern('.git', '*.m'),
            })
        end
    }
}
