execute pathogen#infect()

" My Stuff
" set autochdir       "Auto change directory to current file
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

" Colors
colorscheme Tomorrow-Night-Bright
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
highlight iCursor guifg=white guibg=steelblue
set guicursor+=i:ver100-icursor

autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.ng set filetype=html   
