set nocompatible

if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
 
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Original repos on github
NeoBundle 'vim-scripts/chordpro.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils'      " Requirement for snipmate
NeoBundle 'tomtom/tlib_vim'                   " Requirement for snipmate
NeoBundle 'honza/vim-snippets'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'Lokaltog/vim-powerline'
"NeoBundle 'maciakl/vim-neatstatus'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-rails'
NeoBundle 'Valloric/YouCompleteMe', { 'build': { 'linux': './install.sh' } }
"NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'skalnik/vim-vroom'
NeoBundle 'hail2u/vim-css3-syntax'
"NeoBundle 'skammer/vim-css-color'
NeoBundle 'groenewege/vim-less'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'dahu/LearnVim'
NeoBundle 'nathanaelkane/vim-indent-guides'

filetype plugin indent on

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" alt+n or alt+p to navigate between entries in QuickFix
" map   :cp 
" map   :cn 

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

set encoding=utf8
set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set number  " Line numbers on
"set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set so=14 " Keep cursor away from edges of screen.

" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode

" Highlight cursor line
" Credit - http://dysfunctionalprogramming.co.uk/blog/2013/08/15/fight-with-tools/
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
  au WinLeave * setlocal nocursorline
  au WinLeave * setlocal nocursorcolumn
augroup END

" Indent guides plugin
set sw=2 et
let g:indent_guides_start_level = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

" Airline status line plugin
let g:airline_powerline_fonts=1
let g:airline_linecolumn_prefix = '␊ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_fugitive_prefix = '⭠'
let g:airline_readonly_symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'

set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
" when hitting <BS>, pretend like a tab is removed, even if spaces
set softtabstop=2
" expand tabs by default (overloadable per file type later)
set expandtab
" number of spaces to use for autoindenting
set shiftwidth=2
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
" always set autoindenting on
set autoindent
" copy the previous indentation on autoindenting
set copyindent
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
set ttymouse=xterm2 " Allow resizing of tmux splits with mouse
set showbreak=↪ " Prettier wrapped line breaks

" Use solarized color scheme
set background=dark
let g:solarized_termtrans=1
let g:solarized_visibility="high"
colorscheme solarized
"endif

call togglebg#map("F6")

" Use 256 color mode
set t_Co=256

" Backups & Files
set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

" Powerline fancy symbols
let g:Powerline_symbols = 'fancy'

" Alt+arrow for split window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Split vertical window with new window below current

set splitbelow

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set list
set listchars=tab:➟\ ,eol:⤦,trail:~,extends:>,precedes:<

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk

" Make spacebar act as :
nnoremap <Space> :

" Save on losing focus
au FocusLost * :wa

" Make jj act as ESC
inoremap jj <ESC>

" Make , act as Leader
"let mapleader = ","

" \w opens new vertical split window and switches to it
nnoremap <leader>w <C-w>v<C-w>l

" Ctrl + movement keys = move windows
"nnoremap <C-h> <C-w>j
"nnoremap <C-j> <C-w>k
"nnoremap <C-k> <C-w>l
"nnoremap <C-l> <C-w>;

" Set movement keys to jkl; instead of hjkl
" nnoremap k k " Up
" nnoremap j h " Left
" nnoremap ; l " Right
" nnoremap l j " Down
noremap ; l
noremap l j
noremap k k
noremap j h

" Prompt for a command to run
map rp :PromptVimTmuxCommand
" Run last command executed by RunVimTmuxCommand
map rl :RunLastVimTmuxCommand
" Inspect runner pane
map ri :InspectVimTmuxRunner
" Close all other tmux panes in current window
map rx :CloseVimTmuxPanes
" Interrupt any command running in the runner pane
map rs :InterruptVimTmuxRunner

" snipmate
" :imap <C-Tab> <Plug>snipMateNextOrTrigger
" :smap <C-Tab> <Plug>snipMateNextOrTrigger

"let g:snips_trigger_key='<c-space>'
:imap <c-space> <Plug>snipMateNextOrTrigger
:smap <c-space> <Plug>snipMateNextOrTrigger

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
