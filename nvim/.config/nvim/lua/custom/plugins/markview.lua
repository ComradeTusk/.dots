-- For `plugins/markview.lua` users.
return {
  'OXY2DEV/markview.nvim',
  lazy = false,

  -- Completion for `blink.cmp`
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    local preset = require 'markview.presets'
    require('markview').setup {
      preview = { enable = false },
      markdown = { horizontal_rules = preset.horizontal_rules.arrowed, headings = preset.headings.arrowed, tables = preset.tables.rounded },
    }
    vim.api.nvim_set_keymap('n', '<leader>mt', '<CMD>Markview<CR>', { desc = 'Toggles `markview` previews globally.' })
    vim.api.nvim_set_keymap('n', '<leader>ml', '<CMD>Markview linewiseToggle<CR>', { desc = 'Toggles `line-wise` hybrid mode.' })
    vim.api.nvim_set_keymap('n', '<leader>ms', '<CMD>Markview splitToggle<CR>', { desc = 'Toggles `splitview` for current buffer.' })
  end,
}
