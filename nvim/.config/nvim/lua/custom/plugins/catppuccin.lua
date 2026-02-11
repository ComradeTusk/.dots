return {
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        auto_integrations = true,
      }

      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
