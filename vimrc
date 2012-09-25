"{{{ Vundle: Vim Bundle Management

" be iMproved
set nocompatible

" required!
filetype off

" Modify runtime path
set rtp+=~/.vim/bundle/vundle/

" Vundle
call vundle#rc()
"}}}
"{{{ Bundles

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'

Bundle 'scrooloose/nerdtree'
Bundle 'pangloss/vim-javascript'
Bundle 'molokai'

"}}}
"{{{ General Settings
filetype plugin indent on
colorscheme molokai
set guifont=Ubuntu\ Mono\ 10
set guioptions-=T
syntax on
"}}}
"{{{ Key Mapping
let mapleader = ","
nmap <silent> <leader>p :NERDTreeToggle<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" }}}
"{{{ Folding
set foldmethod=marker
au BufWinLeave * mkview
au BufWinEnter * silent loadview
"}}}
"{{{ NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" }}}
