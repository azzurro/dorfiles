" Constants

let g:base_path = fnamemodify(resolve(expand('<sfile>:p')), ':h') . "/"

" Pathogen

let g:pathogen_disabled = []

filetype off

exec ":source " . g:base_path . 'vim/pathogen/autoload/pathogen.vim'
execute pathogen#infect('vim/{}', g:base_path . 'vim/{}')
Helptags

" Syntax

syntax on
filetype plugin indent on

autocmd BufRead,BufNewFile .babelrc set filetype=json
autocmd BufRead,BufNewFile *.gvy set filetype=groovy
autocmd BufRead,BufNewFile Jankinsfile set filetype=groovy
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
autocmd FileType html,markdown,jinja setlocal sw=2 sts=2 et " 2-space indent
autocmd FileType json,yaml setlocal sw=2 sts=2 et           " 2-space indent
autocmd FileType make set modelines=0

" Autocomplete

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

set wildignore=*.o,*~,*.pyc,.venv
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=.git,.gitmodules
set wildignore+=bower_components,node_modules
set wildignore+=dist

" Style

let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_degrade=1
set background=dark
colorscheme solarized
set t_Co=256

if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
    set guitablabel=%M\ %t
endif

" Editor

set backspace=indent,eol,start
set clipboard=unnamed
set laststatus=2
set list
set listchars=tab:›\ ,trail:·,extends:#,nbsp:.
set relativenumber
set nu
set history=999
set undolevels=999
set hidden
set noeb vb t_vb=
set nobackup
set nowb
set noswapfile

" Editor/Wrap

set colorcolumn=80
set fo-=t
set nowrap
set tw=79

" Editor/Search

set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

" Editor/Indent

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set shiftround

" Editor/Menu

set wildmenu
set wildmode=list:longest,full
set completeopt=menu,menuone,longest
set pumheight=15

" Keybinding

let mapleader = ","                         " remap leader
let g:mapleader = ","
nmap <leader>w :w<cr>                       " quick save
noremap <c-f> mzgg=G`z<cr>                  " quick format
noremap <c-h> :bprevious<cr>                " prev buffer
noremap <c-l> :bnext<cr>                    " next buffer
map <leader>bd :bd<cr>                      " buffer close
map <leader>ba :1,1000 bd!<cr>              " buffer all close
vnoremap <leader>s :sort<cr>                " visual sort
vnoremap < <gv                              " visual indent
vnoremap > >gv
vmap Q gq                                   " paragraph format
nmap Q gqap

map <leader>m :NERDTreeToggle<cr>           " nerdtree toggle

" Plugins/Airline

let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1

" Plugins/Ctrlp

let g:ctrlp_max_height = 15
let g:ctrlp_show_hidden = 1
set wildignore+=*.pyc

" Plugins/Hardmode

let g:HardMode_level = 'wannabe'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Plugins/NERDTree

let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeNaturalSort = 1

" Plugins/Signify

let g:signify_vcs_list = ['git']

" Plugins/Jedi

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
let g:jedi#auto_close_doc = 1

" Plugins/Ultisnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Plugins/SuperTab

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabClosePreviewOnPopupClose = 1
"let g:SuperTabLongestHighlight=1
let g:SuperTabMappingForward = '<nul>'
let g:SuperTabMappingBackward = '<s-nul>'
let g:SuperTabMappingTabLiteral = '<tab>'

" Plugins/Syntastic

" let g:syntastic_debug = 3
let g:syntastic_check_on_open = 1
let g:syntastic_css_checkers = ['stylelint']
let g:syntastic_cpp_checkers = ['gcc']
" let g:syntastic_cpp_checkers = ['clang_check', 'clang_tidy', 'gcc']
let g:syntastic_cpp_compiler_options = '-std=c++17'
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_python_checkers = ['pyflakes', 'pycodestyle', 'pep8']
let g:syntastic_python_pycodestyle_args='--ignore=W504,W606,E701,E731'
let g:syntastic_python_pep8_args='--ignore=W504,W606,E701,E731'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = '--config .eslintrc*'
