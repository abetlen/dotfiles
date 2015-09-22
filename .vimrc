" syntax highlighting
set nocompatible
syntax on

set wildmenu
set history=500
set title
set nu
set mouse=a
set autoindent
filetype plugin indent on

" backup and swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" highlight incremental searches
set incsearch
set hlsearch
nnoremap <space> :nohlsearch<CR>

" window split options
set splitbelow
set splitright
nnoremap <Esc>h <C-W>h
nnoremap <Esc>j <C-W>j
nnoremap <Esc>k <C-W>k
nnoremap <Esc>l <C-W>l

noremap <silent> <M-Right> :exe "vertical res +5"<CR>
noremap <silent> <M-Left> :exe "vertical res -5"<CR>
noremap <silent> <M-Up> :exe "res +5"<CR>
noremap <silent> <M-Down> :exe "res -5"<CR>

" force 256 color
set t_Co=256
colorscheme zenburn

" plainly highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" .md interpreted as markdown
au BufNewFile,BufRead *.md set filetype=markdown

command DeleteTrailingWhitespace %s/\s\+$//g
command Date r !date +"\%Y-\%m-\%d"
command Time r !date +"\%R"

