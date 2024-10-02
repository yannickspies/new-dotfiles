return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.prettier.with {
          filetypes = { 'javascript', 'typescript', 'vue', 'json', 'html', 'css', 'markdown' },
        },
        -- Stylua for Lua
        null_ls.builtins.formatting.stylua,
      },
    }

    vim.cmd [[
      augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.js,*.ts,*.vue,*.json,*.html,*.css,*.md,*.lua lua vim.lsp.buf.format({ async = true })
      augroup END
    ]]
  end,
  requires = { 'nvim-lua/plenary.nvim' },
}
