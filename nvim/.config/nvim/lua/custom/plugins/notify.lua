return {
  {
    'rcarriga/nvim-notify',
    event = 'VeryLazy',
    opts = {
      stages = 'slide',
      timeout = 3000,
      render = 'wrapped-compact',
      top_down = true,
    },
    config = function(_, opts)
      local notify = require 'notify'
      notify.setup(opts)
      vim.notify = notify
      pcall(require('telescope').load_extension, 'notify')
    end,
    keys = {
      {
        '<leader>un',
        function() require('notify').dismiss { silent = true, pending = true } end,
        desc = 'Dismiss all Notifications',
      },
      {
        '<leader>fN',
        '<cmd>Telescope notify<cr>',
        desc = '[F]ind [N]otifications',
      },
    },
  },
}
