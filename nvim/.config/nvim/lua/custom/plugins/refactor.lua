return {
  'ThePrimeagen/refactoring.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  keys = {
    {
      '<leader>r',
      '',
      desc = '+refactor',
      mode = { 'n', 'x' },
    },
    {
      '<leader>rs',
      function()
        require('telescope').load_extension('refactoring')
        require('telescope').extensions.refactoring.refactors()
      end,
      desc = 'Refactor: Pick (Telescope)',
      mode = { 'n', 'x' },
    },
    {
      '<leader>ri',
      function() return require('refactoring').refactor 'Inline Variable' end,
      desc = 'Refactor: Inline Variable',
      mode = { 'n', 'x' },
      expr = true,
    },
    {
      '<leader>rx',
      function() return require('refactoring').refactor 'Extract Variable' end,
      desc = 'Refactor: Extract Variable',
      mode = { 'n', 'x' },
      expr = true,
    },
    {
      '<leader>rf',
      function() return require('refactoring').refactor 'Extract Function' end,
      desc = 'Refactor: Extract Function',
      mode = { 'n', 'x' },
      expr = true,
    },
    {
      '<leader>rF',
      function() return require('refactoring').refactor 'Extract Function To File' end,
      desc = 'Refactor: Extract Function To File',
      mode = { 'n', 'x' },
      expr = true,
    },
    {
      '<leader>rb',
      function() return require('refactoring').refactor 'Extract Block' end,
      desc = 'Refactor: Extract Block',
      mode = { 'n', 'x' },
      expr = true,
    },
    { '<leader>rP', function() require('refactoring').debug.printf { below = false } end, desc = 'Refactor: Debug Print' },
    {
      '<leader>rp',
      function() require('refactoring').debug.print_var { normal = true } end,
      desc = 'Refactor: Debug Print Variable',
      mode = { 'n', 'x' },
    },
    { '<leader>rc', function() require('refactoring').debug.cleanup {} end, desc = 'Refactor: Debug Cleanup' },
  },
  opts = {
    show_success_message = true,
  },
  config = function(_, opts) require('refactoring').setup(opts) end,
}
