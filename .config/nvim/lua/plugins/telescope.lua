local telescope = require('telescope')

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

local map = vim.keymap.set

map('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
map('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
map('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
map('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
map('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

map('n', '<leader>gc', require('telescope.builtin').git_bcommits, { desc = 'List commits for the current buffer with diff preview' })
map('n', '<leader>gb', require('telescope.builtin').git_branches, { desc = 'List of branches' })

map('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
map('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
map('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })
