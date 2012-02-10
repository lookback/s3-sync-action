set nowrap
syntax on
set background=dark

colorscheme desert              " this colorscheme works well both in a GUI and a terminal

set encoding=utf-8              " use utf-8 in Vim
set fileencodings=utf-8,latin1  " automatically detect utf-8 and latin1

" make it easier to jump in the file:
"map <s-j> 6j                    
"map <s-k> 6k

set autoindent                  " automatically indent new lines...
set smartindent                 " ... and be clever about it
set expandtab                   " expand tabs to spaces...
set smarttab                    " ... even when indenting
set shiftwidth=4                " indent using 2 spaces...
set tabstop=4                   " ... because a tab is 2 spaces

set number                      " display line numbers
set ruler                       " display position of the cursor

"set paste                       "avoid weird tabbing when pasting (disabled to keep smartindent to work)

set ignorecase                  " ignore case when searching...
set smartcase                   " ... unless pattern contains uppercase characters
set incsearch                   " show match for partly typed search
set hlsearch                    " highlight matches
set mouse=a                     " enable mouse

set showcmd                     " show typed keys in the status line
set wildmenu                    " show match for partly typed commands in the command line
set title                       " let vim set the title of the window
let &titlestring = expand("%:n") . "%(\ %M%)" . " @ " . hostname()  " and modify it to include the host name

autocmd FileType html set shiftwidth=4 tabstop=4
autocmd FileType css set shiftwidth=4 tabstop=4
" make sure comments in python doesn't go to the beginning of line when trying to add them
" (http://stackoverflow.com/questions/2063175/vim-insert-mode-comments-go-to-start-of-line)
autocmd FileType python setl nosmartindent

filetype plugin on          " plugins are enabled

" Visually select the text that was last edited/pasted
nmap gV `[v`]

au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.mako set filetype=mako

" Initialize pathogen
call pathogen#infect() 
