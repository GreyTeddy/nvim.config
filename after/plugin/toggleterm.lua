local toggleterm = require("toggleterm")

toggleterm.setup({
  -- hide_numbers = false,
})

vim.keymap.set("n", "<leader>tn", function ()
  local Terminal = require("toggleterm.terminal").Terminal
  Terminal:new({direction = "horizontal"}):toggle()
end,{desc = "[t]erminal: [n]ew" })
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>",{desc = "[t]erminal: [t]oggle" })

function _G.set_terminal_keymaps()
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {desc=""})
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
