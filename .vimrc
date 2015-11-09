" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

" Default config
syntax on
set number
set tabstop=4
set autoindent
set smartindent
set colorcolumn=100

" Color scheme
colorscheme gruvbox
set background=dark

" NERDTree
let NERDTreeIgnore = ['\.pyc$']

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

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType htmldjango,html,php,jsx EmmetInstall
let g:user_emmet_expandabbr_key = '<silent> <Leader>e'

" OSX ^M
set ffs=unix,dos

" Pymode
let g:pymode_rope_complete_on_dot = 0

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
