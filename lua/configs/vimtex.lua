-- lua/custom/configs/vimtex.lua
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_forward_search_on_start = 1
vim.g.vimtex_syntax_conceal = { math = 0, sections = 0, accents = 0 }
vim.g.vimtex_mappings_enabled = 1
vim.g.vimtex_complete_enabled = 1

-- Add custom key mappings
vim.api.nvim_set_keymap('n', '<leader>ll', ':VimtexCompile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lv', ':VimtexView<CR>', { noremap = true, silent = true })

