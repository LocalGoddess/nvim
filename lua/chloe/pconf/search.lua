local telescope_builtin = require("telescope.builtin")

local function find_files()
    local output = vim.fn.system("git", "rev-parse --is-inside-work-tree")
    if output == "TRUE" then
        telescope_builtin.git_files()
        return
    end

    telescope_builtin.find_files()
end


vim.keymap.set("n", "<leader>ff", find_files, {})
vim.keymap.set("n", "<leader>fs", 
    function()
        telescope_builtin.grep_string({ search = vim.fn.input("Find String > ") })
    end, {}
)

