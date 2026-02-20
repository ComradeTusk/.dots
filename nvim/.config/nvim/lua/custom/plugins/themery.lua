return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = { 'gruvbox-material', 'catppuccin', 'monokai-pro', 'onedark' },
      livePreview = true,
    }
  end,
  keys = {
    vim.keymap.set('n', '<leader>tt', function() require('themery').themery() end, { desc = '[F]ind [H]elp' }),
  },
}
