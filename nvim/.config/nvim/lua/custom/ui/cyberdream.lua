return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('cyberdream').setup {
      transparent = true,
      italic_comments = true,
      borderless_pickers = true,
      terminal_colors = true,
      colors = {
        -- For a list of colors see `lua/cyberdream/colours.lua`

        -- Override colors for both light and dark variants
        bg = '#000000',
        -- green = '#00ff00',
      },
    }
  end,
}
