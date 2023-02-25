require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

local map = vim.keymap.set

map({ 'n', 'v' }, '<leader>o', ':NvimTreeToggle<CR>', {})
map({ 'n', 'v' }, '<leader>s', ':NvimTreeFindFile<CR>', {})
