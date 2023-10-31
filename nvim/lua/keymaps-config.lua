vim.keymap.set('n', '<leader>fd', ':Telescope fd <CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser <CR>')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
  
  end,
})

