set nocompatible "be iMproved
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
filetype off

" Packages {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" packages
Plugin 'Raimondi/delimitMate' " autocomplete quotes, brackets, etc
Plugin 'mattn/emmet-vim', {'for': ['javascript.jsx','html', 'css']} " because I can't live without emmet
Plugin 'sjl/gundo.vim' " get that undo tree
Plugin 'easymotion/vim-easymotion' " help me move around
Plugin 'pangloss/vim-javascript', {'for': 'javascript'} " improved js indentatino and syntax support
Plugin 'mxw/vim-jsx', {'for': 'jsx'} " jsx highlighting
Plugin 'ervandew/supertab' " tab completion (consider replacing with YCM
Plugin 'tpope/vim-unimpaired' " easy mappings for commands that come in pairs
Plugin 'tpope/vim-commentary' " toggle comments
Plugin 'scrooloose/nerdtree' " filetree window
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " highlight nerdtree by filetype
Plugin 'bling/vim-bufferline' " show buffers in status line
Plugin 'tpope/vim-markdown' " updated markdown
Plugin 'tpope/vim-vividchalk' " vividchalk colorscheme

call vundle#end()            
filetype plugin indent on    
" }}}

" most of this by suggestions of https://dougblack.io/words/a-good-vimrc.html

" Spaces & Tabs {{{
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in TAB when editing
set expandtab " tabs are spaces
set linebreak " break at end of words, not in middle
" indents are a sinlge tab
exec 'set shiftwidth=4'
" }}}
" UI Config {{{
set number " show line numbers
set showcmd " show previous command in bottom bar
set showmatch " highlight matching [{()}]
set laststatus=2 " always show the statusline
colorscheme vividchalk " use vividchalk
" }}}
" Search {{{ 
set incsearch " search as characters are entered
set hlsearch " highlight matches
nnoremap <CR> :noh<CR>  " clear highlighting with enter key
" }}}
" Folding {{{
set foldenable " enables folding
set foldmethod=indent " fold based on indentation
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nexted fold max
" }}}
" Movement {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move between split panes
nnoremap ]w <C-W><C-L>
nnoremap [w <C-W><C-H>
" }}}
" Leader Shortuts {{{
let mapleader="," " use comma as the leader
inoremap jk <esc> " because vim wasn't meant for my keyboard
nnoremap <leader>u :GundoToggle<CR> " map gundo to ,u
nnoremap <leader>w <C-w>
" }}}
" Package Configs {{{
let g:jsx_ext_required = 0 " allow vim-jsx to highlight in .js files
" so emmet works in .js files, too
let g:user_emmet_settings = {
\ 'javascript': {
\        'extends': 'jsx',
\    },
\}
" toggle nerdtree
map <leader>f :NERDTreeToggle<CR>
" enable nerdtree highlighting
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" }}}

set modeline
set modelines=1 " use the last line to specifiy settings for this file
" vim:foldmethod=marker:foldlevel=0
