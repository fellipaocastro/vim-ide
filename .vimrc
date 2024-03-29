set nocompatible                " be iMproved
filetype off                    " required!
let mapleader=","               " change the leader to be a comma vs slash
set laststatus=2                " Always show the statusline
set encoding=utf-8              " Necessary to show Unicode glyphs
set hidden                      " makes vim work like every other multiple-file editor
set title                       " show title in console title bar
set number                      " Display line numbers
set numberwidth=1               " using only 1 column (and 1 space) while possible
set wildmenu                    " Menu completion in command mode on <Tab>
set wildmode=full               " <Tab> cycles between all matching choices.
set grepprg=ack                 " replace the default grep program with ack
set ruler                       " show the cursor position all the time
set backspace=2                 " Allow backspacing over autoindent, EOL, and BOL
set nowrap                      " don't wrap text
set linebreak                   " don't wrap textin the middle of a word
set autoindent                  " always set autoindenting onco
set smartindent                 " use smart indent if there is no indent file
set tabstop=4                   " <tab> inserts 4 spaces
set shiftwidth=4                " but an indent level is 2 spaces wide.
set softtabstop=4               " <BS> over an autoindent deletes both spaces.
set expandtab                   " Use spaces, not tabs, for autoindent/tab key.
set shiftround                  " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>             " show matching <> (html mainly) as well
set lazyredraw                  " do not redraw while running macros (much faster) (LazyRedraw)
" set textwidth=99                " used by gqq or <VISUAL>gq command to format lines

if has('unnamedplus')
    " By default, Vim will not use the system clipboard when yanking/pasting to
    " the default register. This option makes Vim use the system default
    " clipboard.
    " Note that on X11, there are _two_ system clipboards: the "standard" one, and
    " the selection/mouse-middle-click one. Vim sees the standard one as register
    " '+' (and this option makes Vim use it by default) and the selection one as
    " '*'.
    " See :h 'clipboard' for details.
    set clipboard=unnamedplus,unnamed
else
    " Vim now also uses the selection system clipboard for default yank/paste.
    set clipboard+=unnamed
endif

""" Mouse settings
"
set mouse=a

""" Ignore these files when completing
"
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

""" Insert completion
" don't select first item, follow typing in autocomplete
set completeopt=menuone,longest,preview
" Keep a small completion window
set pumheight=6

""" Reading/Writing
"
set noautowrite                 " Never write a file unless I request it.
set noautowriteall              " NEVER.
set noautoread                  " Don't automatically re-read changed files.
set modeline                    " Allow vim options to be embedded in files;
set modelines=5                 " they must be within the first or last 5 lines.
set ffs=unix,dos,mac            " Try recognizing dos, unix, and mac line endings.

""" Messages, Info, Status
"
set vb t_vb=                    " Disable all bells.  I hate ringing/flashing.
set confirm                     " Y-N-C prompt if closing with unsaved changes.
set showcmd                     " Show incomplete normal mode commands as I type.

""" Searching and Patterns
"
set ignorecase                  " Default to using case insensitive searches,
set smartcase                   " unless uppercase letters are used in the regex.
set smarttab                    " Handle tabs more intelligently
set hlsearch                    " Highlight searches by default.
set incsearch                   " Incrementally search while typing a /regex


""" Misc
"
set nobackup
set noswapfile
set foldlevel=99


set list
set listchars=tab:>-,trail:·



""" VUNDLE
"
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/nginx.vim'
Plugin 'vim-scripts/apachelogs.vim'
Plugin 'nvie/vim-flake8'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'docunext/closetag.vim'
Plugin 'Rykka/clickable.vim'
Plugin 'Rykka/clickable-things'
Plugin 'Rykka/os.vim'
Plugin 'Rykka/riv.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Shougo/neocomplete.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'groenewege/vim-less'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tmhedberg/matchit'
Plugin 'junegunn/vim-easy-align'
Plugin 'othree/html5.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'mileszs/ack.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'lepture/vim-jinja'
Plugin 'Valloric/MatchTagAlways'
Plugin 'vim-scripts/c.vim'
Plugin 'exu/pgsql.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-endwise'
Plugin 'Townk/vim-autoclose'
Plugin 'luochen1990/rainbow'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-scripts/upAndDown'
Plugin 'tpope/vim-repeat'
Plugin 'mhinz/vim-startify'
Plugin 'ngmy/vim-rubocop'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'burnettk/vim-angular'
Plugin 'leafgarland/typescript-vim'
" Plugin 'klen/python-mode'

Plugin 'spf13/vim-colors'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'dracula/vim', { 'as': 'dracula' }

call vundle#end()
filetype plugin indent on     " required!
" ...


filetype on

""" Vim-Easy-Align
"
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)


""" javascript-libraries-syntax
"
let g:used_javascript_libs = 'jquery,angularjs,requirejs'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_requirejs = 1


""" jedi-vim
"
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 0


""" syntastic
"
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python', 'ruby', 'php'],
                           \ 'passive_filetypes': ['puppet'] }
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225'
let g:syntastic_ruby_checkers = ['rubocop', 'ruby-lint']


""" Vim-AirLine
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


""" NERDTree
"
let NERDTreeIgnore = ['\.pyc$']


""" CTRLP
"
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
let g:ctrlp_working_path_mode = '0'
let g:ctrlp_show_hidden = 1

""" neocomplete
"
let g:neocomplete#enable_at_startup = 0


""" Colors
"
" silent!colorscheme railscasts
" silent!colorscheme molokai
silent!colorscheme dracula
set colorcolumn=100
set t_Co=256
syntax on
set cursorline
" hi ColorColumn ctermbg=red guibg=red
hi TabLineFill ctermfg=LightGray ctermbg=Black
hi TabLine ctermfg=Gray ctermbg=Black
hi TabLineSel ctermfg=White ctermbg=Red
hi CursorLine term=bold cterm=bold guibg=Grey40
hi Search guifg=#000000 guibg=#FFFFE0 ctermfg=Black ctermbg=LightYellow cterm=NONE
hi visual ctermfg=black ctermbg=LightGray
hi MatchParen cterm=underline ctermbg=none ctermfg=none
hi SpellBad guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi SpellCap guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE


""" Key Mappings
"

" F2 toogles TabBar
nmap <F2> :NERDTreeTabsToggle<CR>
" LF finds the current file in the tree
nmap LF :NERDTreeFind<CR>

" F3 toogles TabBar
nmap <F3> :TagbarToggle<CR>

" F4 Find word in all files
nmap <F4> :execute "vimgrep /" . expand("<cword>") . "/gj **/*.py" <Bar> cw<CR>

nmap <F5> :e<CR>

set pastetoggle=<F6>

nmap <F7> :RuboCop<CR>

noremap <F8> :set invnumber<CR>
inoremap <F8> <C-O>:set invnumber<CR>

nmap <F9> :GitGutterToggle<CR>

nmap <F10> :!vendor/bin/phpcs --standard=PSR2 %<CR>

" jj to ESC while in insert mode
imap jj <Esc>
" ; to : while in normal mode
nnoremap ; :

" Tab navigation
noremap <C-Right> :tabn<CR>
inoremap <C-Right> <ESC>:tabn<CR><Insert>
noremap <C-Left> :tabp<CR>
inoremap <C-Left> <ESC>tabp<CR><Insert>

" Window navigation
noremap <C-h> :wincmd h<CR>
noremap <C-j> :wincmd j<CR>
noremap <C-k> :wincmd k<CR>
noremap <C-l> :wincmd l<CR>

nnoremap <Leader>f :set filetype?<CR>
nnoremap <Leader>sw :StripWhitespace<CR>
nnoremap <Leader>p :echo expand('%:p')<CR>
nnoremap <Leader>pi :PluginInstall<CR>:q<CR>
nnoremap <Leader>h :noh<CR>

" Faz os resultados da busca aparecerem no meio da tela
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz


" Indent/unindent highlighted block (and maintain highlight)
"
vnoremap <Tab>    >gv
vnoremap <S-Tab>  <gv


" Map Ctrl+P to duplicate visual selection
"
vmap <C-p> y'>p


""" Highlight excess line length
"
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 99
    autocmd FileType python,ruby,javascript highlight Excess ctermbg=Black guibg=Black
    autocmd FileType python,ruby,javascript match Excess /\%99v.*/
    autocmd FileType python,ruby,javascript set nowrap

    autocmd FileType python map <Leader>b <CR>Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
    autocmd FileType ruby map <Leader>b <CR>Obyebug # BREAKPOINT<C-c>
    autocmd FileType javascript map <Leader>b <CR>Odebugger; # BREAKPOINT<C-c>
augroup END


let g:pymode_options_max_line_length = 99


let g:vimrubocop_config = '~/dotfiles/.rubocop.yml'


""" Silver Searcher
" https://github.com/ggreer/the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'


""" vim air-line
"
let g:airline_powerline_fonts = 1

let g:sql_type_default = 'pgsql'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_fmt_command = "goimports"

au FileType ruby,eruby set ts=2
au FileType ruby,eruby set shiftwidth=2
au FileType ruby,eruby set ai
au FileType ruby,eruby set si
au FileType ruby,eruby hi Debug ctermfg=175
" au FileType ruby,eruby syn keyword Debug byebug

" Make those debugger statements painfully obvious
au BufEnter *.rb syn match error contained "\<byebug\>"
au BufEnter *.rb syn match error contained "\<binding.pry\>"

let g:rainbow_active = 1

autocmd User Startified set buftype=

""" Include ~/.vimrc_extra, if file exists
"
let vimrc_extra=expand("~/.vimrc_extra")
if filereadable(vimrc_extra)
    exec ":source " . vimrc_extra
endif
