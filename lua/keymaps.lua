-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
local opts = { noremap = true, silent = true }

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use <Tab> and <S-Tab> to switch between windows
vim.keymap.set('n', '<Tab>', '<C-w>w', { desc = 'Move to next window' })
vim.keymap.set('n', '<S-Tab>', '<C-w>W', { desc = 'Move to previous window' })

-- Split management
vim.keymap.set('n', '<leader>h', '<cmd>split<CR>', { desc = 'Horizontal split' })
vim.keymap.set('n', '<leader>v', '<cmd>vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '<leader>c', '<cmd>close<CR>', { desc = 'Close current window' })

-- Buffer navigation
vim.keymap.set('n', ']b', '<cmd>bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '[b', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })

-- Save file
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', opts)

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Disable continuations
vim.keymap.set('n', '<Leader>o', 'o<Esc>^Da', opts)
vim.keymap.set('n', '<Leader>O', 'O<Esc>^Da', opts)

-- Map <leader>e to open Oil in the current directory
vim.keymap.set('n', '<leader>e', ':Oil<CR>', { desc = 'Open Oil in current directory' })
