
" needed for some vim features
set nocompatible
" required for vundle
filetype off
"
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
"Bundle 'Yggdroot/indentLine'
Bundle 'nathanaelkane/vim-indent-guides'
"vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required! for vundle
filetype plugin on

" show line numbers
set nu
" toggle line numbering
noremap <F4> :set invnu<CR>
" show line number and column number
set ru

" tab width 4 characters
set softtabstop=4
set shiftwidth=4

" insert spaces instead of tab character
" to insert a real tab use: CTRL-V<Tab>
set expandtab

" capitalize the word preceding the cursor in insert mode
imap <C-F> <Esc>gUiw`]a

" syntax highlighting
sy on

" automatic indent options
" set cindent
set autoindent 

set smartindent

" do not delete indent when navigating away from line without typing
set cpoptions+=I

" case insensitive patterns
" prefix with \C for case sensitive matching
set ignorecase

" Makes all vim sessions share the same clipboard so that copy-paste can be
" done across sessions
set clipboard=unnamed

" show command being typed in normal mode
set showcmd

" incremental search
set incsearch

" map : to ; and vice-versa 
" so you don't have to hold down shift to get into command mode
"nnoremap ; :
"nnoremap : ;
"vnoremap ; :
"vnoremap : ;

" automatically change directory to the file location
set autochdir

" save file with sudo privileges
noremap <F2> :w !sudo tee %<CR>

" always place cursor on centre line
set scrolloff=999

" place search results on middle line
"map n nzz
"map N Nzz

" toggle paste mode and display current value
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>

set path+=**

execute pathogen#infect()

" always open nerdtree
"autocmd vimenter * NERDTree

" toggle nerd-tree window
noremap <C-n> :NERDTreeToggle<CR>

" don't abandon buffers when unloading
set hidden

if has ('gui_running')
    colorscheme jellybeans
    set background=dark
endif

" split vertically for diffs
set diffopt+=vertical

" hide toolbar in gvim
set guioptions-=T
" hide scrollbars and menubar
set go-=rLm

" turn off YCM confirmation for config file
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" avoid backspace problems
set backspace=indent,eol,start

" toggle taglist window
nnoremap <C-p> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Show_One_File=1

" toggle minibufexpl window
nnoremap <C-b> :TMiniBufExplorer<CR>

" toggle indent lines
nnoremap <C-i> :IndentLinesToggle<CR>

" slime default to ipython: wrap in %cpaste when sending to buffer
let g:slime_python_ipython=1

syntax enable
"set background=dark
"colorscheme jellybeans

"set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
colorscheme jellybeans



" make space and backspace keys function as in insert mode
"nnoremap <space> i<space><Esc>l
"nnoremap <BS> i<BS><Esc>l
"nnoremap <CR> i<CR><Esc>

" yank/delete till end of line

nnoremap C c$
nnoremap D d$
nnoremap Y y$

command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>


set t_Co=256
