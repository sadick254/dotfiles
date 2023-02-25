vim.g.mapleader = ' '

local map = vim.keymap.set

map('i', 'jj', '<Esc>', {})
map('n', '<C-H>', '<C-W><C-H>', {})
map('n', '<C-L>', '<C-W><C-L>', {})
map('n', '<C-J>', '<C-W><C-J>', {})
map('n', '<C-K>', '<C-W><C-K>', {})
map('n', 'Q', ':<C-u>qa!<CR>', { silent = true })
map({ 'n', 'v' }, 'H', '0', {})
map({ 'n', 'v' }, 'L', '$', {})
map('v', '<leader>y', '"+y', {})
map('n', '<leader>p', '"+p', {})
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Diagnostics
map('n', '[d', vim.diagnostic.goto_prev)
map('n', ']d', vim.diagnostic.goto_next)
map('n', '<leader>e', vim.diagnostic.open_float)
map('n', '<leader>q', vim.diagnostic.setloclist)
