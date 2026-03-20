return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  config = function()
    require('persistence').setup {}
    vim.keymap.set('n', '<leader>sr', function() require('persistence').load() end, { desc = 'Restore Session' })
    vim.keymap.set('n', '<leader>ss', function() require('persistence').select() end, { desc = 'Select Session' })
    vim.keymap.set('n', '<leader>sl', function() require('persistence').load { last = true } end, { desc = 'Restore Last Session' })
    vim.keymap.set('n', '<leader>sd', function() require('persistence').stop() end, { desc = "Don't Save Current Session" })
  end,
}
