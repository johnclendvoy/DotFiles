"""""""""""""""""""""""""""""""""""""""""""""""
" Personalized vimrc file for John C. Lendvoy "
"""""""""""""""""""""""""""""""""""""""""""""""

" scroll before reaching edge of page
set scrolloff=3

" do not cut words when wrapping around on a line
set linebreak

" remap esc to jk or kj
imap jk <Esc>
imap kj <Esc>

" save buffer with spacebar
map <space> :w<cr>

" set color theme
colo desert

" draw a vertical line at the 81st column
" set colorcolumn=81
" hi ColorColumn ctermbg=Grey ctermfg=Black

" statusline
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set laststatus=2

"highlight the current line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

"show a column bar
"set cursorcolumn
"hi CursorColumn guibg=#404040

"set open new vertical splits on the right
set splitright

" Always show line numbers, but only in current window.
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

" Automatically resize vertical splits.
:au WinEnter * :set winfixheight
:au WinEnter * :wincmd =


" size of a hard tabstop
set tabstop=4
" size of an indent
set shiftwidth=4
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4


