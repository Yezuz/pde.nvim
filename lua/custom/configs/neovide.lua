if vim.g.neovide then
  vim.opt.guifont = { 'Monaco Nerd Font', ':h9' }
  -- vim.opt.guifont = { 'LigaConsolas Nerd Font', ':h11' }
  -- vim.opt.guicursor = { 'a:blinkwait700-blinkoff400-blinkon250' }
  vim.g.neovide_transparency = 0.90
  vim.g.neovide_window_blurred = true
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_cursor_vfx_mode = 'wireframe'
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 10
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_ligth_radius = 5
  vim.g.neovide_cursor_smooth_blink = true
end
