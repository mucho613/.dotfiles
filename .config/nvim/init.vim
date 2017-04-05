if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc', {'build': 'make'})

call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-go', {'build': 'make'})
"call dein#add('zchee/deoplete-clang')

call dein#add('itchyny/lightline.vim')
call dein#add('Shougo/unite.vim')
call dein#add('ujihisa/unite-colorscheme')
call dein#add('w0ng/vim-hybrid')

call dein#add('tomasr/molokai')

call dein#add('scrooloose/syntastic')

call dein#add('Shougo/vimshell.vim')

call dein#add('jiangmiao/auto-pairs')

call dein#add('fatih/vim-go')

call dein#end()

if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif

if dein#check_install()
  call dein#install()
endif

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" deoplete-go
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" molokai
syntax on
colorscheme hybrid
highlight Normal ctermbg=none
let g:molokai_original = 1
let g:rehash256 = 1

" vim-go
let g:go_fmt_command = "goimports"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim
set title
set noshowmode
set number
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set clipboard+=unnamedplus
set background=dark

" Enable filetype plugins
filetype plugin on
