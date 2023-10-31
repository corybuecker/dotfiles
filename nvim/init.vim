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
  require('treesitter-config')
  require('colorscheme-config')
  require('telescope-config')
  require('keymaps-config')
  require('lsp-config')
  
  require('scratchpad')
EOB
