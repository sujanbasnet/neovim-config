return {
  'nvimtools/none-ls.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local null_ls = require 'null-ls'

    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

    null_ls.setup {
      sources = {
        -- using conform.nvim for formatting
        -- null_ls.builtins.formatting.prettier.with {
        --   filetypes = {
        --     'typescript',
        --     'typescriptreact',
        --     'javascript',
        --     'javascriptreact',
        --     'json',
        --     'yaml',
        --     'markdown',
        --     'css',
        --   },
        -- },
      },
      -- on_attach = function(client, bufnr)
      --   if client.supports_method 'textDocument/formatting' then
      --     vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      --
      --     vim.api.nvim_create_autocmd('BufWritePre', {
      --       group = augroup,
      --       buffer = bufnr,
      --       callback = function()
      --         vim.lsp.buf.format {
      --           bufnr = bufnr,
      --           async = false,
      --           filter = function(c)
      --             return c.name == 'null-ls'
      --           end,
      --         }
      --       end,
      --     })
      --   end
      -- end,
    }
  end,
}
