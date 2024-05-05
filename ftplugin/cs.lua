vim.keymap.set('n', 'gd', function()
  require('csharp').go_to_definition()
end, { silent = true, buffer = vim.api.nvim_get_current_buf() })
