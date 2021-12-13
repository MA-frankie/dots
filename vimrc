vmap cc :norm i#<CR>
vmap uc :norm ^x<CR>

" включить подсветку синтаксиса
"syntax enable

" показывать номера строк
set number

" установить tab равным 4 пробелам
set ts=4

" отступ при переходе на следующую строку при написании кода
set autoindent

" преобразование tab-ов в пробелы
set expandtab

" при использовании команд >> или << сдвигать строки на 4 пробела
set shiftwidth=4

" выделять строку, на которой находится курсор
"set cursorline"

" показывать парную скобку для [] {} и ()
set showmatch

" включить подсветку синтаксиса Python
let python_highlight_all = 1

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'dense-analysis/ale'

Plug 'Vimjas/vim-python-pep8-indent'

" Initialize plugin system
call plug#end()
