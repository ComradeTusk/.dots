return {
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        auto_integrations = true,
        transparent_background = true,
      }
    end,
  },
}
