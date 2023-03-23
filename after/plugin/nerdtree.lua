local nmap = function(keys, func, desc)
  if desc then
    desc = '[d]irectory: ' .. desc
  end
  vim.keymap.set('n', '<leader>d' .. keys, func, { desc = desc })
end

nmap("v", ":NERDTreeToggle<CR>", "[T]oggle NERDTree")
