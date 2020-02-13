set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'mileszs/ack.vim'
Plugin 'psf/black'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'zivyangll/git-blame.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Colorscheme
"colorscheme murphy

" Syntax colors
:syntax on

" Allow backspace in insert mode
:set backspace=2

if $VIM_CRONTAB == 'true'
  set nobackup
  set nowritebackup
endif

" enable syntax highlighting
syntax enable

" show line numbers
"set number

" set tabs to have 4 spaces
"
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
"set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

let mapleader=" "
let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_completion=1
let NERDTreeShowHidden=1

set foldmethod=indent
set foldlevel=99

set encoding=utf-8

"search options
set incsearch
set ignorecase
set smartcase
set hlsearch

"powerline
"let g:Powerline_symbols = 'fancy'

"ag for ack.vim
"let g:ackprg = 'ag --nogroup --nocolor --column'
"
"rg for ack.vim
let g:ackprg = 'rg --vimgrep --no-heading'


map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>v  :call UseProperVirtualEnv()<CR>
map <leader>n  :NERDTreeToggle<CR>
map <leader>l  :set number!<CR>
map <leader>p  :set paste!<CR>
map <leader>h  :set hlsearch!<CR>
map <leader>f  :CtrlPBuffer<CR>
map <leader>w  :Ack <cword><CR>
map <leader>a  :Ack<Space>
"map <C-n>      :bnext<CR>
"map <C-p>      :bprev<CR>
nmap <leader>d <Plug>(pydocstring)
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>


au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

function UseProperVirtualEnv()
  if shell_error == 0
    let venv_path = substitute(system('pipenv --venv'), '\n', '', '')
  else
    let venv_path = $WORKON_HOME . '/' . substitute(system('pwd | xargs basename'), '\n', '', '')
  endif
    let venv_path_full = venv_path . '/bin/python'
    :PymodeVirtualenv venv_path
    :execute 'YcmCompleter RestartServer ' . venv_path_full
endfunction

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
