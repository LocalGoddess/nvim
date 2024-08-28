require("nvim-treesitter.configs").setup(
    {
        ensure_installed = { "vimdoc", "lua", "rust" },

        sync_install = true,
        auto_install = true,

        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        }
    }
)
