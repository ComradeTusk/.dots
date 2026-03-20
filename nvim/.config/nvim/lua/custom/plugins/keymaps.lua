local function toggle_terminal()
  local term_buf = nil
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[buf].buftype == 'terminal' then
      term_buf = buf
      break
    end
  end

  local term_win = nil
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_buf(win) == term_buf then
      term_win = win
      break
    end
  end

  if term_win then
    vim.api.nvim_win_hide(term_win)
  elseif term_buf then
    vim.cmd 'botright split'
    vim.api.nvim_win_set_buf(0, term_buf)
    vim.api.nvim_win_set_height(0, 5)
    vim.cmd 'startinsert'
  else
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd 'J'
    vim.api.nvim_win_set_height(0, 5)
    vim.cmd 'startinsert'
  end
end

return {

  vim.keymap.set('n', '<C-d>', toggle_terminal, { desc = 'Toggle Terminal' }),
  vim.keymap.set('t', '<C-d>', toggle_terminal, { desc = 'Toggle Terminal' }),
  vim.keymap.set('n', '<leader>cb', '<cmd>bd<cr>', { desc = '[C]lose [B]uffer' }),
  vim.keymap.set('n', '<leader>cw', '<cmd>close<cr>', { desc = '[C]lose [W]indow' }),
  vim.keymap.set('n', '<leader>cab', '<cmd>bufdo qall<cr>', { desc = '[C]lose [A]ll [B]uffers' }),
  vim.keymap.set('n', '<leader>caw', '<cmd>bufdo qall<cr>', { desc = '[C]lose [A]ll [W]indows' }),
  -- open small terminal on the bottom of the screen
  vim.keymap.set('t', 'C-d', '<cmd>bd!<cr>', { desc = 'Exit Terminal Mode' }),
  --
  --
}
