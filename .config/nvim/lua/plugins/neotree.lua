require('neo-tree').setup({
	filesystem = {
		filtered_items = {
			visible = true,
		}
	}
})

vim.keymap.set({ 'n', 'v' }, '<leader>o', ':Neotree toggle<CR>', {})
