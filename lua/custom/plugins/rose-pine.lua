return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      variant = 'auto',
      dark_variant = 'main',
      dim_inactive_windows = true,
      styles = {
        bold = true,
        italic = true,
      },
    }
  end,
}
