require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })
vim.keymap.set('n', '<Up>', 'gk', { noremap = true, silent = true })
vim.keymap.set('n', '<Down>', 'gj', { noremap = true, silent = true })
vim.keymap.set('v', '<Up>', 'gk', { noremap = true, silent = true })
vim.keymap.set('v', '<Down>', 'gj', { noremap = true, silent = true })

-- Normal mode: Word and screen line movement with Ctrl + hjkl
vim.keymap.set('n', '<C-h>', 'b', { noremap = true, silent = true }) -- Move left by word
vim.keymap.set('n', '<C-l>', 'w', { noremap = true, silent = true }) -- Move right by word
vim.keymap.set('n', '<C-j>', 'gj', { noremap = true, silent = true }) -- Move down screen line
vim.keymap.set('n', '<C-k>', 'gk', { noremap = true, silent = true }) -- Move up screen line

-- Visual mode: Word selection with Ctrl + h/l and line movement with Ctrl + j/k
vim.keymap.set('v', '<C-h>', 'b', { noremap = true, silent = true })
vim.keymap.set('v', '<C-l>', 'w', { noremap = true, silent = true })
vim.keymap.set('v', '<C-j>', 'gj', { noremap = true, silent = true })
vim.keymap.set('v', '<C-k>', 'gk', { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

vim.keymap.set('n', 'J', '<Nop>', { noremap = true, silent = true }) -- Disable Shift + J
vim.keymap.set('n', 'K', '<Nop>', { noremap = true, silent = true }) -- Disable Shift + K
vim.keymap.set('n', 'J', '5gj', { noremap = true, silent = true }) -- Move 5 lines down by screen lines
vim.keymap.set('n', 'K', '5gk', { noremap = true, silent = true }) -- Move 5 lines up by screen lines

-- Alt + hjkl for buffer navigation
vim.keymap.set('n', '<A-h>', ':bprevious<CR>', { noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set('n', '<A-l>', ':bnext<CR>', { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set('n', '<A-j>', ':bfirst<CR>', { noremap = true, silent = true, desc = "First buffer" })
vim.keymap.set('n', '<A-k>', ':blast<CR>', { noremap = true, silent = true, desc = "Last buffer" })

