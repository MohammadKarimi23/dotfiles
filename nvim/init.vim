
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes' " Colorschemes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go' " Golang integration
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocomplete
Plug 'zchee/deoplete-go', { 'do': 'make'} " Autocomplete for go
Plug 'majutsushi/tagbar' " Tagbar
Plug 'airblade/vim-gitgutter' " Git diff
Plug 'scrooloose/syntastic' " Syntax checker
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary' " Comment/Uncomment lines
Plug 'terryma/vim-multiple-cursors' " Multiple cursors like sublime
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
call plug#end()

" vim-go
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" Deoplete (autocomplete)
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Theme
syntax enable
"colorscheme gotham256
let g:rehash256 = 1
colorscheme Tomorrow-Night-Bright
set number

" Preferences
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow
set incsearch 

" Personal hotkeys
nmap <F12> :tabe term://zsh<CR>i

" open nerdtree if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ctrl+n for nerdtree
map <C-n> :NERDTreeToggle<CR>
