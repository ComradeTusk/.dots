return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = { 'gruvbox-material', 'catppuccin', 'monokai-pro', 'onedark', 'cyberdream', 'rose-pine' },
      livePreview = true,
    }
  end,
  keys = {
    { '<leader>uc', function() require('themery').themery() end, desc = 'ColorScheme' },
  },
}
