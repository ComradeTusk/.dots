return {
  'catgoose/nvim-colorizer.lua',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    filetypes = { 'html', 'css', 'scss', 'javascript', 'typescript', 'lua' },
  },
}
