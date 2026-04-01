return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = { 'gruvbox-material', 'catppuccin', 'monokai-pro', 'onedark', 'cyberdream' },
      livePreview = true,
    }
  end,
  keys = {
    vim.keymap.set('n', '<leader>uc', function() require('themery').themery() end, { desc = 'ColorScheme' }),
  },
}
