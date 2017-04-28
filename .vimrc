" plugins
call plug#begin('~/.vim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/syntastic'
  Plug 'chriskempson/base16-vim'
  Plug 'tpope/vim-fugitive'
call plug#end()

" settings
let base16colorspace=256
colorscheme base16-chalk

" mappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let mapleader = "\<Space>"
map <Leader>, :tabe ~/.vimrc<CR>
map <Leader>r :so ~/.vimrc<CR>
map <Leader>t :Error<CR>
map <Leader>T :SyntasticToggleMode<CR>
map <Leader>I :SyntasticInfo<CR>
map <Leader>p :CtrlP<CR>
map <Leader>P :CtrlP<CR>
map <Leader>j :tabp<CR>
map <Leader>k :tabn<CR>
map <Leader>n :lne<CR>
map <Leader>N :lp<CR>
map <Leader>M :tabm
map <Leader>w :w<CR>:redraw!<CR>
map <Leader>q :q<CR>
map <Leader>R :redraw!<CR>
map <Leader>o :o .<CR>
map <Leader>O :tabe .<CR>
map <Leader>- <C-w>-
map <Leader>= <C-w>+
map <Leader>s <C-w><C-w>
map <Leader>h <C-w><Left>
map <Leader>l <C-w><Right>
map <Leader>E :w !pbcopy<CR><CR>

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set autochdir
set ignorecase
set ruler
set nu

" ctrlP
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dist/* 
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-s>'],
    \ 'AcceptSelection("v")': ['<c-v>'],
    \ }

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '$HOME/Workspace/fizzxpro/node_modules/.bin/eslint'
