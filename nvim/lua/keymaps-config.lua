vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h <CR>')
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>')
vim.keymap.set('n', '<leader>rs', ':lua vim.cmd.RunSwift()<CR>')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
  end,
})

vim.api.nvim_create_user_command('RunSwift',
  function()
    vim.cmd('w')
    vim.cmd('!swift %')
  end,
  {}
)
