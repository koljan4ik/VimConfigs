" enable syntax highlighting
syntax on 
colorscheme Tomorrow-Night-Bright

" set autoread when the file changed from outside
set autoread

" show line numbers
set number 

" show the matching part of the pair for [] {} ()
set showmatch

" enable all python syntax highlighting features
let python_highlight_all = 1

" Enchance command-line completion
set wildmenu

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" But case-sensitive if there are capital letters
set smartcase

" Autocompleteion
:imap <S-Tab> <C-P>

" Text, tabs and indent
" expand tabs into spaces
set expandtab

" indent when moving to the next line while writing code
set autoindent
set smartindent

" Wrap lines
set wrap

" set tabs to have 4 spaces
set ts=4

" Linebreak on 500 cheraters
set lbr
set tw=500

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
