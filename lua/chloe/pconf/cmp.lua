local cmp = require("cmp")

cmp.setup(
    {
        snippet = {
            expand =
                function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },

            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },

            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.confirm({ select = true }),
                ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                ["<Tab>"] = nil,
                ["<S-Tab>"] = nil,
            }),

            sources = cmp.config.sources(
                {
                    { name = "nvim_lsp" },
                    { name = "lua_snip" },
                    -- TODO(Chloe): Finish this
                },
                {
                    { name = "buffer" },
                }
            )
    }
)

