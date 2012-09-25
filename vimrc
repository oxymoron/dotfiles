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

"}}}
"{{{ General Settings
filetype plugin indent on
colorscheme desert256
set guifont=Consolas:h9
syntax on
"}}}
"{{{ Key Mapping
nmap <silent> <leader>p :NERDTreeToggle<CR>
nmap <silent> <leader>sv :e $MYVIMRC<CR>
nmap <silent> <leader>ev :so $MYVIMRC<CR>
" }}}
"{{{ Folding
set foldmethod=marker
au BufWinLeave * mkview
au BufWinEnter * silent loadview
"}}}
