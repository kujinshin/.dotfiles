" vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin(stdpath('data') . '/plugged')

Plug 'amadeus/vim-mjml'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'StanAngeloff/php.vim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/completion-nvim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
