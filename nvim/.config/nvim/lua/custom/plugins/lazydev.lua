return {
  'folke/lazydev.nvim',
  ft = 'lua',
  cmd = 'LazyDev',
  opts = {
    library = {
      { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      { path = 'nvim-lspconfig', words = { 'lspconfig.settings' } },
      'blink.cmp',
    },
  },
}
