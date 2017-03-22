set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('C:\Users\u0098059a\.vim\bundle\')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Valloric/YouCompleteMe'
Plugin 'gradzikb/vim-abaqus'
Plugin 'tpope/vim-fugitive'
Plugin 'moll/vim-bbye'
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"enable syntax highlighting
syntax on 
colorscheme Tomorrow-Night-Bright

" set autoread when the file changed from outside
set autoread

" change the pwd automatically 
autocmd BufEnter * silent! lcd %:p:h

" show line numbers
set number 

" show statusline
set laststatus=2 
set statusline=
" filename
set statusline+=%f\
" filetype
set statusline+=[%{strlen(&ft)?&ft:'none'},
"set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
" right allign
set statusline+=%=
set statusline+=%1*%y%*%*\
set statusline+=%10((%l,%c)%)\
set statusline+=%P

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

" set number of spaces for indentation
set shiftwidth=4

" Linebreak on 500 cheraters
set lbr
set tw=500

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
