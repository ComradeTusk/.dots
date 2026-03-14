return {
  'RRethy/vim-illuminate',
  opts = {
    delay = 200,
    large_file_cutoff = 2000,
    large_file_overrides = {
      providers = { 'lsp' },
    },
  },
  config = function(_, opts)
    require('illuminate').configure(opts)
    -- Jump to next/prev reference
    vim.keymap.set('n', ']]', function() require('illuminate').goto_next_reference() end)
    vim.keymap.set('n', '[[', function() require('illuminate').goto_prev_reference() end)
  end,
}
