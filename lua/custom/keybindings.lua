local keymap = vim.keymap

-- explorer
keymap.set('n', '<Leader>pv', vim.cmd.Ex)

-- open terminal in a new tab
keymap.set('n', '<Leader>tt', ':tabnew | term<Cr> :startinsert<Cr>')

-- open terminal as a new vertical window
keymap.set('n', '<C-t>', ':vsp | term<Cr> :vert res 75<Cr> :startinsert<Cr>')

-- show diagnostics in popup dialog
vim.api.nvim_set_keymap('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

-- Disable virtual_text, using float window
vim.diagnostic.config {
  virtual_text = false,
}

-- code actions
keymap.set('n', '<Leader>ca', function()
  vim.lsp.buf.code_action()
end)

-- gd with a vertical split
vim.api.nvim_set_keymap('n', '<C-g><C-d>', ':vsp | :lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

keymap.set('n', '<Leader>rc', ':-1read $HOME/.config/nvim/snippets/react-component.tsx<CR>')

-- Map Ctrl + H to trigger LSP hover
vim.api.nvim_set_keymap('n', '<C-H>', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
