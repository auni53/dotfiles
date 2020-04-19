" plugins
call plug#begin('~/.vim/plugged')
  " vital
  Plug 'chriskempson/base16-vim'

  " nice
  Plug 'junegunn/vim-easy-align'
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
set backupdir=~/.vim/backups

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
