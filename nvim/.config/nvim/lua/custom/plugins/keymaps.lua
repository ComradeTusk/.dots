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

local on_exit = function(obj)
  vim.schedule(function() vim.fn.setreg('+', vim.fn.trim(obj.stdout)) end)
end

return {
  -- vim.keymap.ser('n','a', function()
  --
  vim.keymap.set('n', '<C-S>', '<cmd>:w<cr>', { desc = 'Write Buffer' }),
  vim.keymap.set('n', '<leader>p', function() vim.system({ 'hyprpicker' }, {}, on_exit) end, { desc = 'ColorPicker' }),
  -- end, { desc = 'Open New Buffer' }),
  vim.keymap.set('i', 'jj', '<Esc>'),
  -- vim.keymap.set('i', 'hh', '<Esc>h'),
  vim.keymap.set('i', 'kk', '<Esc>'),
  -- vim.keymap.set('i', 'll', '<Esc>l'),
  vim.keymap.set('n', '<C-/>', toggle_terminal, { desc = 'Toggle Terminal' }),
  vim.keymap.set('n', '<C-/>', toggle_terminal, { desc = 'Toggle Terminal' }),
  vim.keymap.set('t', '<\\>', toggle_terminal, { desc = 'Toggle Terminal' }),
  vim.keymap.set('t', '<\\>', toggle_terminal, { desc = 'Toggle Terminal' }),
  vim.keymap.set('n', '<leader>bc', '<cmd>bd<cr>', { desc = '[B]uffer [C]lose' }),
  vim.keymap.set('n', '<leader>bf', '<cmd>Telescope buffers<cr>', { desc = '[B]uffer [F]ind' }),
  vim.keymap.set('n', '<leader>wc', '<cmd>close<cr>', { desc = '[W]indow [C]lose' }),
  vim.keymap.set('n', '<leader>bC', '<cmd>bufdo qall<cr>', { desc = 'Close All Buffers' }),
  vim.keymap.set('n', '<leader>wC', '<cmd>bufdo qall<cr>', { desc = 'Close All Windows' }),
  -- open small terminal on the bottom of the screen
  vim.keymap.set('t', 'C-d', '<cmd>bd!<cr>', { desc = 'Exit Terminal Mode' }),
  --
  --
}
