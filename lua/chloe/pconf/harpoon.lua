local harpoon = require("harpoon")
harpoon:setup({})

local confg = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_path = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_path, item.value)
    end

    require("telescope.pickers").new({},
        {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
                results = file_path,
            }),
            previewer = confg.file_previewer({}),
            sorter = confg.generic_sorter({})
        }
    ):find()
end

-- Opens the Harpoon window
vim.keymap.set("n", "<C-h>", function() toggle_telescope(harpoon:list()) end, {})

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, {})
vim.keymap.set("n", "<leader><C-d>", function() harpoon:list():next() end, {})
vim.keymap.set("n", "<leader><C-a>", function() harpoon:list():prev() end, {})

