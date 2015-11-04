" Set encoding for each file
set encoding=utf-8

" Set for patoghen plugin
execute pathogen#infect()

" Set for syntax: on off
syntax on

" Set for filetype
" plugin indent: on off
filetype plugin indent on

set number                              " Set number line: on
set mouse=a                             " Set mouse in all views
set encoding=utf8                       " Ever use coding
set cursorline                          " Active line in edit line
set title
set et
set scrolloff=3                         " Keep 3 lines when scrolling
set showcmd                             " Show incomplete commandsi
set laststatus=2                        " Active status bar
set t_Co=256                            " Activate color in status bar
set background=dark                     " Background vim light dark
set list lcs=tab:\|\                    " set indentLine default
set showcmd                             "Show incomplete cmds down the bottom
set showmode                            "Show current mode down the bottom

" ================ Completion =======================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" set paste " active paste system, d'not use for autocomplete plugin

colorscheme solarized                   " scheme color

let g:airline_powerline_fonts = 1

let g:neocomplete#enable_at_startup = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
let g:neocomplete#enable_force_overwrite_completefunc=1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
