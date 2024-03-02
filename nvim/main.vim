" Set the leader button
let mapleader = ','

"----------------------------------------------
" General settings
"----------------------------------------------
set autoindent                      " Take indent for new line from previous line
set autoread                        " Reload file if the file changes on the disk
set autowriteall                    " Write on :quit
set autowrite                       " Write when switching buffers
set completeopt-=preview            " Remove the horrendous preview window
set cursorline                      " Highlight the current line for the cursor
set encoding=utf-8
set expandtab                       " Expands tabs to spaces
set listchars=trail:.,tab:>-,eol:$  " What characters to show with F2
set list                            " Show trailing whitespace
set noerrorbells                    " No bells!
set nolist                          " Hide hidden chars (listchars) by default
set noshowmode                      " Don't show the mode (handled by plugin)
set spell                           " Enable spelling
set noswapfile                      " Disable swapfile usage
set novisualbell                    " I said, no bells!
set nowrap
set number                          " Show number ruler
set relativenumber                  " Show relative numbers in the ruler
set ruler
set smartindent                     " Enable smart indentation
set smarttab                        " Enable smart tab
set softtabstop=2
set title titlestring=              " Let vim set the terminal title
set updatetime=100                  " Redraw the status bar often
set scrolloff=5                     " Minimum screen lines above/below the cursor

" Highlight the 80th column as an indicator
set colorcolumn=101
:highlight ColorColumn ctermbg=8 guibg=DarkGrey

" Resize splits when the window is resized
:autocmd VimResized * wincmd =

" Paste lines below, instead of 'on top of' the current line
" https://stackoverflow.com/questions/1346737/how-to-paste-in-a-new-line-with-vim
:nmap P :pu<CR>

" Enable yanking into the system clipboard
noremap Y "+y

" Enable mouse
set mouse=a

" Allow vim to set a custom font or color for a word
syntax enable

" Autosave buffers before leaving them
autocmd BufLeave * silent! :wa

if (has("termguicolors"))
  set termguicolors
endif

set background=dark

"----------------------------------------------
" Searching
"----------------------------------------------
set incsearch                     " move to match as you type the search query
set hlsearch                      " disable search result highlighting

if has('nvim')
    set inccommand=split          " enables interactive search and replace
endif

" https://vim.fandom.com/wiki/Search_for_visually_selected_text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"----------------------------------------------
" Mappings
"----------------------------------------------
map <silent> <F2> :set invlist<CR>    " Show/hide hidden Chars
map <F1> <Esc>                        " When I hit F1 I usually mean escape

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

filetype plugin on
set omnifunc=syntaxcomplete#Complete

