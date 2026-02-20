return {
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        auto_integrations = true,
        color_overrides = {
          all = {
            base = '#150C21',
          },
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
