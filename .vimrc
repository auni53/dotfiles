" plugins
call plug#begin('~/.vim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-syntastic/syntastic'
  Plug 'tpope/vim-fugitive'
  Plug 'chriskempson/base16-vim'
  Plug 'stefandtw/quickfix-reflector.vim'
call plug#end()

autocmd QuickFixCmdPost *grep* copen

" settings
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 3

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_warning_symbol = 'WW'
let g:syntastic_error_symbol = 'EE'

let g:syntastic_ruby_checkers = ['rubocop']

" vim explorer
let g:netrw_list_hide= '.*\.swp$,\~$,\.orig$'

" mappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

command! Gem execute "tabe $HOME/.gem/ruby/2.3.1/gems"
command! Plug execute "PlugInstall"

filetype plugin indent on
set tabstop=2
set expandtab
set pastetoggle=<F2>
set shiftwidth=2
autocmd BufEnter * silent! lcd %:p:h "fancy autochdir

set ignorecase
set ruler
set nu

" netrw
let g:netrw_liststyle = 0
let g:netrw_banner = 0

" ctrlP
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dist/* 
let g:ctrlp_use_caching = 1
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<cr>'],
    \ 'AcceptSelection("t")': ['<c-t>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-s>'],
    \ 'AcceptSelection("v")': ['<c-v>'],
    \ }

let mapleader = "\<Space>"
map <Leader>, :tabe ~/.vimrc<CR>
map <Leader>< :tabe ~/.zshrc<CR>
map <Leader>r :so ~/.vimrc<CR>
map <Leader>t :SyntasticReset<CR>
map <Leader>T :SyntasticToggleMode<CR>
map <Leader>d :echo expand('%:p')<CR>
map <Leader>j :tabp<CR>
map <Leader>k :tabn<CR>
map <Leader>n :lne<CR>
map <Leader>w :w<CR>:redraw!<CR>
map <Leader>q :q<CR>
map <Leader>R :redraw!<CR>
map <Leader>o :o .<CR>
map <Leader>O :tabe .<CR>
map <Leader>- <C-w>-
map <Leader>= <C-w>=
map <Leader>_ <C-w>_
map <Leader>+ <C-w>+
map <Leader>s <C-w><C-w>
map <Leader>h <C-w><Left>
map <Leader>l <C-w><Right>
map <Leader>y :w !pbcopy<CR>
map <Leader>v :vs<CR>
map <Leader>V :vs .<CR>
map <Leader>S :sp .<CR>
map <Leader>0 :tabm 0<CR>
map <Leader># :b#<CR>
map <Leader>` :b#<CR>

" quickfix
map <Leader>gg :Ggrep 
map <Leader>co :copen<CR>
map <Leader>cn :cnext<CR>
map <Leader>cp :cprevious<CR>

" vim-plugged
map <Leader>PC :PlugUpdate<CR>
map <Leader>PI :PlugInstall<CR>
map <Leader>PU :PlugUpdate<CR>

" move panes
map <Leader>MH <C-w>H
map <Leader>MJ <C-w>J
map <Leader>MK <C-w>K
map <Leader>ML <C-w>L
