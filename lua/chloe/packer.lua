-- vim.cmd [[packeradd packer.nvim]]

return require("packer").startup(function(use)

    use "wbthomason/packer.nvim"

    -- Themes
    -- First in list is the default
    
    use "rose-pine/neovim"
    use "Shadorain/shadotheme"
    use "nikolvs/vim-sunbather"

    -- End Themes

    use {
            "nvim-treesitter/nvim-treesitter",
            run = function()
                local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
                ts_update()
            end,
            requires = {
                "nvim-treesitter/nvim-treesitter-refactor"
            }
        }

    use {
            "nvim-telescope/telescope.nvim", tag = "0.1.8",
            requires = { { "nvim-lua/plenary.nvim" } }
        }

    use {
            "akinsho/toggleterm.nvim", tag = "*"
        }

    use {
            "williamboman/mason.nvim",
            run = ":MasonUpdate"
        }

    use {
            "williamboman/mason-lspconfig.nvim",
            requires = {
                "neovim/nvim-lspconfig",
                "hrsh7th/cmp-nvim-lsp"
            }
        }

    use {
            "hrsh7th/nvim-cmp",
            requires = {
                "hrsh7th/cmp-buffer", "quangnguyen30192/cmp-nvim-ultisnips", "hrsh7th/cmp-nvim-lua",
                "octaltree/cmp-look", "hrsh7th/cmp-path", "hrsh7th/cmp-calc", "f3fora/cmp-spell",
                "hrsh7th/cmp-emoji", "SirVer/UltiSnips", "L3MON4D3/LuaSnip",
                "rafamadriz/friendly-snippets"
            }
        }

    use {
            "mrcjkb/rustaceanvim", tag = "5.2.2"
        }

    use {
            "ThePrimeagen/harpoon",
            branch = "harpoon2",
            requires = { { "nvim-lua/plenary.nvim" } }
        }

    use {
            "kevinhwang91/nvim-ufo",
            requires = { "kevinhwang91/promise-async" }
        }

    use {
            "mfussenegger/nvim-dap"
        }
end)
