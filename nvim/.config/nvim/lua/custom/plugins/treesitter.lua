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
      'php',
      'phpdoc',
      -- Config & markup
      'yaml',
      'toml',
      'xml',
      'markdown',
      'markdown_inline',
      'diff',
      'sql',
      -- Vim / Neovim
      'vim',
      'vimdoc',
      'query',
    }

    -- Install parsers (new API)
    require('nvim-treesitter').install(filetypes)

    -- Map jsonc filetype to the json parser (no separate jsonc parser in main branch)
    vim.treesitter.language.register('json', 'jsonc')

    -- Enable Treesitter highlighting
    vim.api.nvim_create_autocmd('FileType', {
      pattern = vim.list_extend(vim.deepcopy(filetypes), { 'jsonc' }),
      callback = function() vim.treesitter.start() end,
    })
  end,
}
