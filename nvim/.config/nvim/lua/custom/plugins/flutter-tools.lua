return {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = function()
    require('flutter-tools').setup {
      widget_guides = { enabled = true },
      lsp = {
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          analysisExcludedFolders = {
            vim.fn.expand '$HOME/.pub-cache',
          },
          renameFilesWithClasses = 'prompt',
          updateImportsOnRename = true,
          enableSnippets = false,
        },
      },
    }
  end,
}
