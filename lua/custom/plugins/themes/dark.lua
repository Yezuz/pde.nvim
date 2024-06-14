return {
  'doums/dark.nvim',
  lazy = false,
  priority = 10000,
  config = function()
    require('rosebones').setup {
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
      },
      hide_inactive_statusline = true,
      dim_inactive = true,
      lualine_bold = true,
    }
  end,
}
