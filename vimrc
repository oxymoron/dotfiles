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

" Unite plugin
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'

" Cool status bar
Bundle 'bling/vim-airline'

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
if has("mac")
	set guifont=Monaco:h10
else
	set guifont=Ubuntu\ Mono\ 10
endif
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
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
"}}}
"{{{ NERDTree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
" }}}
"{{{ Unite Plugin Settings

" Automatic insert mode
let g:unite_enable_start_insert = 1

" Buttom right corner
let g:unite_split_rule = "botright"

" Avoid status line overriding
let g:unite_force_overwrite_statusline = 0

" Window size
let g:unite_winheight = 10

" Nice arrows
let g:unite_candidate_icon="▷"

noremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
"}}}
"{{{ Status Line

let g:airline_theme='dark'

let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'

let g:airline_section_c = '%t'
"}}}
