let mapleader=" "

set cursorline
set cursorlineopt=number
set expandtab
set nobackup
set nowritebackup
set number
set shiftwidth=0
set signcolumn=yes
set softtabstop=-1
set tabstop=2
set updatetime=300

lua << EOB
  require('lazy-plugins')

  require('cmp-config')
  require('colorscheme-config')
  require('conform-config')
  require('keymaps-config')
  require('lsp-config')
  require('telescope-config')
  require('treesitter-config')
EOB
