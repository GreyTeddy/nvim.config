local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>df', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ds', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
