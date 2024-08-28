 require("nvim-treesitter.configs").setup(
    {
        refactor = {
            highlight_definitions = {
                enabled = true,
                clear_on_cursor_move = true
            },
            highlight_current_scope = { enabled = true },
            smart_rename = {
                enable = true,
                keymaps = {
                    smart_rename = "<leader>rf"
                }
            }
        }
    }
)
