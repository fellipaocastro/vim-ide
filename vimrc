set nocompatible               	" be iMproved
filetype off                   	" required!
let mapleader=","	       	    " change the leader to be a comma vs slash 
set laststatus=2   		        " Always show the statusline
set encoding=utf-8 		        " Necessary to show Unicode glyphs
set hidden			            " makes vim work like every other multiple-file editor
set title                     	" show title in console title bar
set number                    	" Display line numbers
set numberwidth=1             	" using only 1 column (and 1 space) while possible
set wildmenu                  	" Menu completion in command mode on <Tab>
set wildmode=full             	" <Tab> cycles between all matching choices.
set grepprg=ack         	    " replace the default grep program with ack
set ruler                   	" show the cursor position all the time
set backspace=2             	" Allow backspacing over autoindent, EOL, and BOL 
set nowrap                  	" don't wrap text
set linebreak               	" don't wrap textin the middle of a word
set autoindent              	" always set autoindenting on
set smartindent             	" use smart indent if there is no indent file
set tabstop=4               	" <tab> inserts 4 spaces 
set shiftwidth=4            	" but an indent level is 2 spaces wide.
set softtabstop=4           	" <BS> over an autoindent deletes both spaces.
set expandtab               	" Use spaces, not tabs, for autoindent/tab key.
set shiftround              	" rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         	" show matching <> (html mainly) as well
set lazyredraw                  " do not redraw while running macros (much faster) (LazyRedraw)

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



""" VUNDLE
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/surround.vim'
Bundle 'vim-scripts/nginx.vim'
Bundle 'nvie/vim-flake8'
Bundle 'majutsushi/tagbar'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'vim-scripts/tComment'
Bundle 'kien/ctrlp.vim'
Bundle 'docunext/closetag.vim'
Bundle 'Rykka/riv.vim'
Bundle 'spf13/vim-colors'
Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'tmhedberg/matchit'
" ...

filetype on
filetype plugin indent on     " required!

""" javascript-libraries-syntax
"
let g:used_javascript_libs = 'jquery,angularjs,requirejs'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_requirejs = 1

""" Flake8
"
let g:flake8_max_line_length=99
let g:flake8_max_complexity=10


""" jedi-vim
"
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 0


""" syntastic
"
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python', 'php'],
                           \ 'passive_filetypes': ['puppet'] }
let g:syntastic_python_checkers=['flake8']


""" Powerline
"
let g:Powerline_symbols='fancy'


""" NERDTree
"
let NERDTreeIgnore = ['\.pyc$']


""" CTRLP
"
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

""" NeoComplCache
"
let g:neocomplcache_enable_at_startup = 1


""" Colors
"
silent!colorscheme molokai
set colorcolumn=99
set t_Co=256
syntax on
set cursorline
hi ColorColumn ctermbg=red guibg=red
hi TabLineFill ctermfg=LightGray ctermbg=Black
hi TabLine ctermfg=Gray ctermbg=Black
hi TabLineSel ctermfg=White ctermbg=Red
hi CursorLine term=bold cterm=bold guibg=Grey40
hi visual ctermfg=black ctermbg=lightblue
hi Normal ctermbg=none


""" Disable Match Paren
"
let loaded_matchparen = 1


""" Key Mappings
"

" F2 toogles TabBar
nmap <F2> :NERDTreeTabsToggle<CR>
" LF finds the current file in the tree
nmap LF :NERDTreeFind<CR>

" F3 toogles TabBar
nmap <F3> :TagbarToggle<CR>

" jj to ESC while in insert mode 
imap jj <Esc> 
" ; to : while in normal mode 
nnoremap ; :

" Tab navigation
noremap <C-Right> :tabn<CR>
inoremap <C-Right> <esc>:tabn<CR><Insert>
noremap <C-Left> :tabprev<CR>
inoremap <C-Left> <ESC>tabprev<CR><Insert>

" Window navigation
noremap <C-h> :wincmd h<CR>
noremap <C-j> :wincmd j<CR>
noremap <C-k> :wincmd k<CR>
noremap <C-l> :wincmd l<CR>


" Indent/unindent highlighted block (and maintain highlight)
"
vnoremap <Tab>    >gv
vnoremap <S-Tab>  <gv


""" Highlight excess line length
"
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 99
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%99v.*/
    autocmd FileType python set nowrap
augroup END


""" Include ~/.vimrc_extra, if file exists
"
let vimrc_extra=expand("~/.vimrc_extra")
if filereadable(vimrc_extra)
    exec ":source " . vimrc_extra
endif
