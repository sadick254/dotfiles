require('neo-tree').setup({
	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
		      	hide_gitignored = true,
			hide_by_name = {
				'.git',
				'.DS_Store',
				'__pycache__',
				'__init__.py',
			},
		}
	}
})

vim.keymap.set({ 'n', 'v' }, '<leader>o', ':Neotree toggle<CR>', {})
