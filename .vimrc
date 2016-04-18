"Custom vimrc for John C. Lendvoy

" do not cut words on the edge of a line 
set linebreak

" scroll before reaching top or bottom of screen
set scrolloff=3

"remap esc to jk
imap jk <Esc>
imap kj <Esc>


"allow backspace to work in windows
set backspace=2


" set color theme
colo desert

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

