local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('n', '<C-a>', 'gg<S-v>G')
map('n', '<Space>q', ':q <cr>')
map('n', '<Space>w', ':w <cr>')

map('n', 'ss', ':split<Return><C-w>w')
map('n', 'sv', ':vsplit<Return><C-w>w')
