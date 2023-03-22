require('gitsigns').setup {
  signs = {
    add          = { text = '│' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  current_line_blame = true,
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  max_file_length = 4000,
  on_attach = function()
    local gs = package.loaded.gitsigns
    vim.keymap.set('n', '<leader>gp', gs.preview_hunk, {desc = '[g]itSigns: [p]review Hunk'})
  end
}
