local toggleterm = require("toggleterm")

toggleterm.setup({
    size = 15,
    open_mapping = [[<c-\>]],
    hide_numbers = true,

    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,

    start_in_insert = true,
    persist_mode = false,

    direction = "float",
    float_opts = {
        border = "curved"
    },
})
