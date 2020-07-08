" :source $MYVIMRC

" chuck swap files at ~/.vim/tmp
set directory^=$HOME/.vim/tmp//

set nocompatible
"set encoding=utf-8
let g:ruby_path = system('rbenv prefix')
filetype indent plugin on

augroup filetype_indent_width
  autocmd!
  autocmd FileType php   setlocal sts=4 sw=4
augroup END
syntax on

"set nowrap
"set nocursorline
"set foldmethod=manual
"set confirm
set autoindent softtabstop=2 expandtab shiftround shiftwidth=2
set backspace=indent,eol,start
set number relativenumber hidden wildmenu lazyredraw

"use elflord colorscheme for php

" run rspec
"nnoremap <CR> :w<CR>:!spring rspec %<CR>
"nnoremap <Leader>t :w<CR>:!spring rspec %:<C-R>=line('.')<CR><CR>

" clipboard copy, paste
" <Leader> is \
vnoremap <Leader>c :w !pbcopy<CR>
noremap <Leader>v :r !pbpaste<CR>
noremap! <Leader>v <Esc>:r !pbpaste<CR>A
 
" :help /ordinary-atom
" regular expresion search
"set regexpengine=1
"nnoremap / /\v
"vnoremap / /\v
