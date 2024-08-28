vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- Move lines up and down with Alt-k and Alt-j
vim.keymap.set("i", "<M-k>", "<Esc>ddkPi")
vim.keymap.set("i", "<M-j>", "<Esc>ddjPi")
