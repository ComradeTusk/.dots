return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',

  config = function()
    local filetypes = {
      -- Web
      'html',
      'css',
      'javascript',
      'typescript',
      'tsx',
      'json',
      'jsonc',
      -- Systems
      'c',
      'cpp',
      'rust',
      'go',
      'gomod',
      'gosum',
      -- Scripting
      'python',
      'bash',
      'ruby',
      'lua',
      'luadoc',
      -- Config & markup
      'yaml',
      'toml',
      'xml',
      'markdown',
      'markdown_inline',
      'diff',
      -- Vim / Neovim
      'vim',
      'vimdoc',
      'query',
    }

    -- Install parsers (new API)
    require('nvim-treesitter').install(filetypes)

    -- Enable Treesitter highlighting
    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function() vim.treesitter.start() end,
    })
  end,
}
