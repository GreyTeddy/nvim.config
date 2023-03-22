local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n","<leader>hh",ui.toggle_quick_menu,{desc="Harpoon: Toggle Menu"})
vim.keymap.set("n","<leader>ha",mark.add_file,{desc="Harpoon: Add File"})
vim.keymap.set("n","<leader>hj",function() ui.nav_next() end,{desc="Harpoon: Go to Next File"})
vim.keymap.set("n","<leader>hk",function() ui.nav_prev() end,{desc="Harpoon: Go to Previews File"})
