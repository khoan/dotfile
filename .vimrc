" :source $MYVIMRC

set nocompatible
syntax on
set encoding=utf-8
filetype indent plugin on

"set nowrap
"set nocursorline
set foldmethod=manual
set relativenumber
set tabstop=2 shiftwidth=2
set expandtab
set smartindent
set backspace=indent,eol,start
set hidden

" run rspec
nnoremap <CR> :w<CR>:!spring rspec %<CR>
nnoremap <Leader>t :w<CR>:!spring rspec %:<C-R>=line('.')<CR><CR>

" clipboard copy, paste
vnoremap <Leader>c :w !pbcopy<CR>
noremap <Leader>v :r !pbpaste<CR>
noremap! <Leader>v <Esc>:r !pbpaste<CR>A
 
" regular expresion search
"set regexpengine=1
nnoremap / /\v
vnoremap / /\v
