" ==========================================================================
"
"               Vim .vimrc file created by Renault Fernandes
"
" ==========================================================================

" ==========================================================================
"  Load Plug and plugins
" ==========================================================================

" call plug#begin('~/.vim/plugged')
"
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'vim-syntastic/syntastic'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'airblade/vim-gitgutter'
" Plug 'jreybert/vimagit'
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-commentary'
" Plug 'justinmk/vim-sneak'
" Plug 'scrooloose/nerdtree'
" " Plug 'altercation/vim-colors-solarized'
" Plug 'chriskempson/base16-vim'
" Plug 'majutsushi/tagbar'
" Plug 'mbbill/undotree'
" Plug 'mattn/emmet-vim'
" Plug 'dbeniamine/cheat.sh-vim'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
"
"
" call plug#end()

" ==========================================================================
"  My custom vimrc config
" ==========================================================================

set nocompatible
set relativenumber
set number
set autoindent
set mouse=a
set nowrap
syntax on
" set noshowmode " Hide --INSERT-- since it is displayed in airline

" Redefine indents and tabs as 2 spaces
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" Escape to normal mode by pressing fd quickly (< 1000ms)
inoremap fd <ESC>

" Set solarized theme
" colorscheme solarized
" set background=dark
" colorscheme base16-solarized-dark

" ==========================================================================
"  Setup Spacemacs like bindings
" ==========================================================================

" " Set spacemacs bindings using space as the leader and comma as localleader
" let mapleader = " "
" let maplocalleader = ","
"
" " File handling commands
" nnoremap <leader>fs :w<enter>
" nnoremap <leader>ff :Files<enter>
" nnoremap <leader>fr :History<enter>
" nnoremap <leader>ft :NERDTreeToggle<enter>
"
" " Searching commands
" nnoremap <leader>/ :Ag<enter>
"
" " Buffer manipulation commands
" nnoremap <leader>bb :Buffers<enter>
" nnoremap <leader>bn :bnext<enter>
" nnoremap <leader>bp :bprevious<enter>
" nnoremap <leader>bd :bdelete<enter>
" nnoremap <leader><tab> <C-^>
"
" " Window manipulation commands
" nnoremap <leader>w/ :vsplit<enter>
" nnoremap <leader>w- :split<enter>
" nnoremap <leader>wm <C-w>o
" nnoremap <leader>wh <C-w>h
" nnoremap <leader>wj <C-w>j
" nnoremap <leader>wk <C-w>k
" nnoremap <leader>wl <C-w>l
"
" " Error checking (Syntastic) commands
" nnoremap <leader>el :SyntasticCheck<enter>:Errors<enter>
" nnoremap <leader>en :lnext<enter>
" nnoremap <leader>ep :lprevious<enter>
" nmap     <leader>eN <leader>ep
"
" " Code Completion (YouCompleteMe) commands
" nnoremap <localleader>hh :YcmCompleter GetDoc<enter>
" nnoremap <localleader>gg :YcmCompleter GoTo<enter>
"
" " Exit command
" nnoremap <leader>qq :qa<enter>
"
" " Help and Commands list
" nnoremap <leader><leader> :Commands<enter>
" nnoremap <leader>h<leader> :Helptags<enter>

" ==========================================================================
"  Configure Plugins
" ==========================================================================

" Set airline theme
" let g:airline_theme = 'solarized'

" Set Syntastic checkers
" let g:syntastic_check_on_open = 1
" let g:syntastic_lua_checkers = ['luacheck']

" Enable Sneak label-mode for minimal easy-motion (s{char}{char})
" let g:sneak#label = 1

" Setup LanguageClient
" Required for operations modifying multiple buffers like rename.
" set hidden
" let g:LanguageClient_serverCommands = {
"     \ 'vue': ['vls']
"     \ }
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
