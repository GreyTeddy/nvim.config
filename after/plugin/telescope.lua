local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>df', builtin.find_files, {desc="Fuzzy Find Files"})
vim.keymap.set('n', '<leader>ds', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")});
end, {desc="Fuzzy Find in Files"})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {desc="Fuzzy Find Git Files"})
