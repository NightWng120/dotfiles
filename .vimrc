set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'itchyny/lightline.vim'
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

inoremap jj <ESC>

let mapleader =" "
set background=dark
filetype off
let g:lightline = { 'colorscheme': 'jellybeans' }
set laststatus=2
let g:gruvbox_italic=1
colo gruvbox
set bg=dark
set go=a
set mouse=a
set nohlsearch
set clipboard=unnamedplus
set nohlsearch
"Sets tab size to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
"Convertts our tabs to spaces
set expandtab
set autoindent
set fileformat=unix

"if empty(glob('~/.vim/autoload/plug.vim'))
"    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" Plugins
"call plug#begin('~/.vim/plugged')
"Plug 'mattn/emmet-vim'
"call plug#end()


" Some basics:
	nnoremap c "_c
	set nocompatible
	"filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
" Enable autocompletion:
	"set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
	map <C-d> <C-d>zz
	map <C-u> <C-u>zz
	nnoremap <leader>b :b#<CR>
	nnoremap <leader>n :bn<CR>
	nnoremap <leader>p :bp<CR>
" Emmet Shortcuts
"let g:user_emmet_mode='n'   "Only enable normal mode functions.
"let g:user_emmet_leader_key=','

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	map <C-p> "+P
"Newtab with ctrl+t
	nnoremap <silent> <C-t> :tabnew<CR>
"Paste from system clipboard with ctrl+i instead of shift insert
	map <S-Insert> <C-i>

"Automatically deletes all trailing whitespace on save.
       autocmd BufWritePre * %s/\s\+$//e

"When shortcut files are updated, renew bash and vifm configs with new material:
       "autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts

"Update binds when sxhkdrc is updated.
       "autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

"Run xrdb whenever Xdefaults or Xresources are updated.
       "autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

"Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

