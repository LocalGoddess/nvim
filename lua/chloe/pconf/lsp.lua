local mason_lspconfig = require("mason-lspconfig")

require("mason").setup({
    ui = {
        border = "rounded"
    }
})

mason_lspconfig.setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "clangd"
    }
})

vim.api.nvim_create_autocmd("LspAttach",
    {
        desc = "LSP Actions",

        callback = 
            function(event)
                local opts = { buffer = event.buf }

                vim.keymap.set("n", "<leader>gd", vim.lsp.buf.declaration, opts)
                vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
            end
    }
)

local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            capabilities = lsp_capabilities,
        })
    end,
    ["rust_analyzer"] =
        function()
            require("chloe.langconf.rust").setup()
        end

})
