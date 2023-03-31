require('bufferline').setup({
  options = {
    mode = 'buffers',
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = {
      { filetype = 'NvimTree' }
    },
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      italic = false
    }
  },
})

local nvmap = function(keys, func, desc)
  if desc then
    desc = 'bufferline: [TAB] ' .. desc
  end
  vim.keymap.set('n', '<leader><Tab>' .. keys, func, { desc = desc })
  vim.keymap.set('v', '<leader><Tab>' .. keys, func, { desc = desc })
end

nvmap('h', ':bNext<CR>', "Left [h]")
nvmap('l', ':bnext<CR>', "Right [l]")
nvmap('q', ':bd<CR>', "[q]uit")
nvmap('Q', ':bd!<CR>', "force [Q]uit")
nvmap('n', ':enew<CR>', "[n]ew")
