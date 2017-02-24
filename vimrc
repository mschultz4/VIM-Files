set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins
Plugin 'jelera/vim-javascript-syntax'
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
" Put your non-Plugin stuff after this line--------------------------------------------------------------

" My Stuff
set autochdir       "Auto change directory to current file
set ignorecase
set guioptions-=m   " Hide the menu bar
set guioptions-=T   " Hide the toolbar
set guioptions-=r   " Hide the scrollbar
set guioptions-=L  "remove left-hand scroll bar
set guifont=Deja\ Vu\ Sans\ Mono\ 11 "set font
set nu              " Add numbers
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" Use Tab and Shift-Tab to cycle through buffers
nnoremap <Tab> :bnext<CR> 
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-q> <C-v>

command Bd bn<bar>bd# "bb to remove buffer from split w/out closing window

colorscheme Tomorrow-Night-Bright
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.ng set filetype=html

" set guicursor+=i:ver100-iCursor "not sure if this is necessary
highlight iCursor guifg=white guibg=steelblue
" Map Switch capslock and escape while in vim
"au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
