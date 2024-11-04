local mini = require('mini')

-- Example setup for some Mini.nvim modules
mini.surround.setup({
  mappings = {
    add = 'gsa', -- Add surrounding
    delete = 'gsd', -- Delete surrounding
    find = 'gsf', -- Find surrounding
    find_right = 'gsf', -- Find right surrounding
    update = 'gsu', -- Update surrounding
    suffix_last = 'l', -- Suffix for last surrounding
    suffix_next = 'n', -- Suffix for next surrounding
  },
})

mini.comment.setup({
  options = {
    ignore_blank_line = true, -- Ignore blank lines
  },
})

mini.pairs.setup({
  mappings = {
    insert = true,  -- Enable pair insertion
    delete = true,  -- Enable pair deletion
  },
})

mini.files.setup({
    -- Customize the following options as needed
    windows = {
        width = 30, -- Width of the files window
        height = 20, -- Height of the files window
    },
    mappings = {
        close = "q", -- Key to close the window
        edit = "<CR>", -- Key to edit/open a file
        new_file = "n", -- Key to create a new file
        delete_file = "d", -- Key to delete a file
        rename_file = "r", -- Key to rename a file
        -- Add more mappings as needed
    },
})
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>MiniFiles<CR>', { noremap = true, silent = true })
-- Add other Mini.nvim module setups as needed

