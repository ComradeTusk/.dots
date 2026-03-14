return {

  vim.keymap.set('n', '<leader>Q', '<cmd>confirm qall<cr>', { desc = 'Quit All (Confirm Save)' }),
  vim.keymap.set('n', '<leader>q', '<cmd>bd<cr>', { desc = 'Buffer Delete' }),
  -- open small terminal on the bottom of the screen
  vim.keymap.set('n', '<leader>tj', function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd 'J'
    vim.api.nvim_win_set_height(0, 5)
  end, { desc = 'Open Terminal' }),
}
