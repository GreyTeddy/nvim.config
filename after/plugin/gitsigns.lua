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
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, "<leader>g"..l, r , opts)
    end

    -- Navigation
    map('n', 'j', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true,  desc = '[g]itsigns: Next [j] change hunk'})

    map('n', 'k', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true,  desc = '[g]itsigns: Previews [k] change hunk'})

    map('n', 'p', gs.preview_hunk, {desc = '[p]review Hunk'})
  end
}
