return {
  -- DX
  vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle),
  vim.keymap.set('n', ';', ':'),
  vim.keymap.set('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>'),
  vim.keymap.set('v', '>', '>gv'),
  vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv"),
  vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv"),
  vim.keymap.set('n', '<c-n>', '<Cmd>Neotree toggle<CR>'),
  vim.keymap.set('n', '<C-i>', '<Cmd>BufferNext<CR>', { silent = true }),
  vim.keymap.set('n', '<C-c>', '<Cmd>BufferClose<CR>'),
  -- CSharp
  vim.keymap.set('n', 'cgd', function()
    require('csharp').go_to_definition()
  end),
}
