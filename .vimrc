set nocompatible " be iMproved, required

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

" Default config
syntax on
set relativenumber
set number
set tabstop=4
set autoindent
set smartindent
set colorcolumn=100
set cursorline
set showcmd
set wildmenu
set showmatch

" leader is comma
let mapleader=","

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" Encoding
set encoding=utf-8

" Use system clipboard
set clipboard=unnamed

" Highlight long lines
set synmaxcol=512

" Watch files
set autoread

" Save on changing buffers
set autowrite

" Display command
set showcmd

" Better seaching
set hlsearch
set ignorecase
set smartcase

" Add a ruler at 80 characters
augroup BgHighlight
	autocmd!
	autocmd WinEnter * set colorcolumn=80
	autocmd WinLeave * set colorcolumn=0
augroup END

" Mouse
set mouse=a
set ttyfast
set t_Co=256

" Color scheme
colorscheme gruvbox
set background=dark

" WEB | JS | PHP
autocmd FileType htmldjango,html,css,js,php,javascript set tabstop=2
autocmd FileType htmldjango,html,css,js,php,javascript set shiftwidth=2
autocmd FileType htmldjango,html,css,js,php,javascript set softtabstop=2
autocmd FileType htmldjango,html,css,js,php,javascript set expandtab

" Python | Ruby | CoffeeScript
autocmd FileType python,ruby,coffee set tabstop=4
autocmd FileType python,ruby,coffee set shiftwidth=4
autocmd FileType python,ruby,coffee set softtabstop=4
autocmd FileType python,ruby,coffee set expandtab

" OSX ^M
set ffs=unix,dos

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Ignore files
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=​.aux,​.out,*.toc "Latex Indermediate files"
set wildignore+=​.jpg,​.bmp,​.gif,​.png,*.jpeg "Binary Imgs"
set wildignore+=​.o,​.obj,​.exe,​.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=node_modules "Node modules"
set wildignore+=bower_components "Bower components"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig "Merge resolution files"

" Pymode
let g:pymode_rope_complete_on_dot = 0

" NERDTree
let NERDTreeIgnore = ['\.pyc$']

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Backup
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Language specific autogroups
augroup configgroup
	autocmd!
	autocmd VimEnter * highlight clear SignColumn
	autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
				\:call <SID>StripTrailingWhitespaces()
	autocmd FileType java setlocal noexpandtab
	autocmd FileType java setlocal list
	autocmd FileType java setlocal listchars=tab:+\ ,eol:-
	autocmd FileType java setlocal formatprg=par\ -w80\ -T4
	autocmd FileType php setlocal expandtab
	autocmd FileType php setlocal list
	autocmd FileType php setlocal listchars=tab:+\ ,eol:-
	autocmd FileType php setlocal formatprg=par\ -w80\ -T4
	autocmd FileType ruby setlocal tabstop=2
	autocmd FileType ruby setlocal shiftwidth=2
	autocmd FileType ruby setlocal softtabstop=2
	autocmd FileType ruby setlocal commentstring=#\ %s
	autocmd FileType python setlocal commentstring=#\ %s
	autocmd BufEnter *.cls setlocal filetype=java
	autocmd BufEnter *.zsh-theme setlocal filetype=zsh
	autocmd BufEnter Makefile setlocal noexpandtab
	autocmd BufEnter *.sh setlocal tabstop=2
	autocmd BufEnter *.sh setlocal shiftwidth=2
	autocmd BufEnter *.sh setlocal softtabstop=2
augroup END


" Tagbar
" nmap <F8> :TagbarToggle<CR>
" let g:tagbar_ctags_bin='/usr/bin/ctags'  " Proper Ctags locations
" let g:tagbar_width=26

" Emmet
" let g:user_emmet_install_global = 1
"autocmd FileType htmldjango,html,php,jsx EmmetInstall
"let g:user_emmet_expandabbr_key = '<silent> <Leader>e'
