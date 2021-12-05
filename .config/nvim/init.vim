set nocompatible              " be iMproved, required
set number                    " set line number
set relativenumber
filetype off                  " required
syntax enable
set ruler                     " show line and column number
set tabstop=4                 " use 4 spaces to represent tab
set expandtab                 " enter spaces when tab is pressed
"set textwidth=120             " break lines when line length increase
set shiftwidth=4              " number of spaces to use for auto indent
set autoindent                " copy indent from current line when starting a new line
set splitright                " make vsplit put the new buffer on the right of the current buffer
set colorcolumn=100
set backspace=indent,eol,start
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Press <F9> to execute the current buffer with Python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

filetype plugin indent on

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Remove whitespaces on save
" autocmd BufWritePre * :%s/\s\+$//e

" Better Search
set ignorecase
set smartcase
set hlsearch         " Highlight found words

" Ability to cancel a search with Escape
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

" Lightline
set laststatus=2

au BufNewFile,BufRead *.js,*.html,*.css,*.json,*.mjml,*.jsx,*.less,*.sass,*.yaml,*.yml,*.txt
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2


" vim split pane helper
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" python-syntax
let g:python_highlight_all = 1


" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


runtime ./plug.vim

" colo seoul256
autocmd vimenter * ++nested colorscheme gruvbox

" lsp config
lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.gopls.setup{}
EOF

" go syntax highlighting
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_declarations = 1
