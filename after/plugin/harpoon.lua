local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n","<leader>hm",ui.toggle_quick_menu, {desc="[h]arpoon: Toggle [m]enu"})
vim.keymap.set("n","<leader>ha",mark.add_file,{desc="[h]arpoon: [a]dd File"})
vim.keymap.set("n","<leader>hj",function() ui.nav_next() end,{desc="[h]arpoon: Go to Next [j] File"})
vim.keymap.set("n","<leader>hk",function() ui.nav_prev() end,{desc="[h]arpoon: Go to Previews [k] File"})
