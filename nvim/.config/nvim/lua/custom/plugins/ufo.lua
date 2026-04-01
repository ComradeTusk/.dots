return {
  'kevinhwang91/nvim-ufo',
  dependencies = {
    'kevinhwang91/promise-async',
  },

  config = function()
    -- Fold settings
    vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Keymaps
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    vim.keymap.set('n', 'zP', function()
      local winid = require('ufo').peekFoldedLinesUnderCursor()
      if not winid then vim.lsp.buf.hover() end
    end, { desc = 'Peek Fold' })
    -- Setup
    require('ufo').setup {
      provider_selector = function(bufnr, filetype, buftype)
        -- return { 'treesitter', 'lsp', 'indent' }
        -- or:
        return { 'treesitter', 'indent' }
      end,
    }
  end,
}
