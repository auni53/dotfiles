" plugins
call plug#begin('~/.vim/plugged')
  " vital
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/syntastic'
  Plug 'chriskempson/base16-vim'

  " nice
  Plug 'junegunn/vim-easy-align'
  Plug 'tpope/vim-fugitive'
  Plug 'ajh17/VimCompletesMe'

  " program-specific
  Plug 'othree/yajs.vim'
  Plug 'wlangstroth/vim-racket'
  Plug 'itchyny/vim-haskell-indent'
call plug#end()

" settings
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" filetype plugin indent on
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set ignorecase
set ruler
set nu
autocmd BufEnter * silent! lcd %:p:h "fancy autochdir
set shell=/bin/zsh
set backupdir=~/Workspace/.vim

" ctrlP
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dist/* 
let g:ctrlp_use_caching = 1
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<cr>'],
    \ 'AcceptSelection("t")': ['<c-t>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-s>'],
    \ 'AcceptSelection("v")': ['<c-v>'],
    \ }

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 3

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

let g:syntastic_python_checkers = ['python']
let g:syntastic_javascript_checkers = ['eslint', 'jshint']

let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:syntastic_enable_racket_racket_checker = 1

" netrw
let g:netrw_liststyle = 0
let g:netrw_banner = 0
let g:netrw_list_hide= '.*\.swp$,\~$,\.orig$'

" mappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let mapleader = "\<Space>"
map <Leader>, :tabe ~/.vimrc<CR>
map <Leader>< :tabe ~/.zshrc<CR>
map <Leader>r :so ~/.vimrc<CR>
map <Leader>d :echo expand('%:p')<CR>
map <Leader>h :tabp<CR>
map <Leader>l :tabn<CR>
map <Leader>n :lne<CR>
map <Leader>w :w!<CR>
" map <Leader>w :w<CR>:redraw!<CR>
map <Leader>q :q<CR>
map <Leader>R :redraw!<CR>
map <Leader>o :o .<CR>
map <Leader>O :tabe .<CR>
map <Leader>- <C-w>-
map <Leader>= <C-w>=
map <Leader>_ <C-w>_
map <Leader>+ <C-w>+
map <Leader>s <C-w><C-w>
map <Leader>y :w !pbcopy<CR>
map <Leader>v :vs<CR>
map <Leader>0 :tabm 0<CR>
map <Leader># :b#<CR>
map <Leader>` :b#<CR>
map <Leader>py :write !python<CR>

" vim-plugged
map <Leader>PI :PlugInstall<CR>
map <Leader>PU :PlugUpdate<CR>
map <Leader>PC :PlugClean<CR>

" syntastic
map <Leader>SI :SyntasticInfo<CR>
map <Leader>SR :SyntasticReset<CR>
map <Leader>ST :SyntasticToggleMode<CR>

" move panes
map <Leader>MH <C-w>H
map <Leader>MJ <C-w>J
map <Leader>MK <C-w>K
map <Leader>ML <C-w>L

map <Leader>pj :w !python<CR>
map <Leader>PJ :w !python<CR><CR>

" easy-align
xmap EA <Plug>(EasyAlign)
nmap EA <Plug>(EasyAlign)
