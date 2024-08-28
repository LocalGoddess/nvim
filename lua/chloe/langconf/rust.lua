local rustaceanvim = require("rustaceanvim")
local cfg = require("rustaceanvim.config")
local lspconfig = require("lspconfig")
local default_capabilities = require("cmp_nvim_lsp").default_capabilities()

local rust_ls = {}

function rust_ls.setup()
    local language_settings = 
        {
            tools = {
                enable_clippy = true
            },

            server = {
                on_attach = 
                function(client, buffer)

                end,
                logfile = "/tmp/rust-analyzer-log.log"
            },

            dap = {
                configuration = rustaceanvim.disable
            }
        }

end

return rust_ls
