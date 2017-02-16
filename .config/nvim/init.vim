call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/syntastic'

Plug 'tpope/vim-surround'

Plug 'majutsushi/tagbar'

Plug 'scrooloose/nerdcommenter'

Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'pangloss/vim-javascript'

Plug 'honza/vim-snippets'

Plug 'whatyouhide/vim-gotham'

Plug 'sjbach/lusty'

Plug 'docunext/closetag.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Add plugins to &runtimepath
call plug#end()

" Cancel the compatibility with Vi. Essential if you want
" to enjoy the features of Vim
set nocompatible
" -- Display
set title " Update the title of your window or your terminal
set number " Display line numbers
set ruler " Display cursor position
set wrap " Wrap lines when they are too long
set scrolloff=3 " Display at least 3 lines around you cursor
" (for scrolling)
set guioptions=T " Enable the toolbar
" -- Search
set ignorecase " Ignore case when searching
set smartcase " If there is an uppercase in your search term
" search case sensitive again
set incsearch " Highlight search results when typing
set hlsearch " Highlight search results
" -- Beep
set visualbell " Prevent Vim from beeping
set noerrorbells " Prevent Vim from beeping
" Backspace behaves as expected
set backspace=indent,eol,start
" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

set tabstop=4
set expandtab
set shiftwidth=4

" Enable syntax highlighting
syntax enable
" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on
set background=dark
colorscheme gotham

if isdirectory(expand(".git"))
  let g:NERDTreeBookmarksFile = '.git/.nerdtree-bookmarks'
endif

set fillchars+=vert:\ 

let g:airline_theme='zenburn'

let g:airline_powerline_fonts = 1
