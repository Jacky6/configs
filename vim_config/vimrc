" ______________
"|__  /__  / ___|
"  / /  / / |
" / /_ / /| |
"/____/____\____|
"
" ================================================================================================
"   =======         =======       ==== ==== ====             ========         =========
"     ====           ====         ==== ==== ====             ==== ====       ==== ====
"      ====         ====               ====                 ====   ====     ====   ====
"       ====       ====                ====                ====     ====   ====     ====
"        ====     ====                 ====               ====       ==== ====       ====
"         ====   ====                  ====              ====         =======         ====
"          ==== ====              ==== ==== ====        ====                           ====
"           =======               ==== ==== ====      ======                           ======
"
"Jacky_zheng
"
""""" system settings """""
set nocompatible                          "    关闭vim的兼容模式
filetype on                               "    打开文件类型检测  
filetype indent on                        "    允许vim为不同类型的文件定义不同的缩进格式
filetype plugin on                        "    允许vim加载文件类型插件,当这个选项打开时，vim会根据检测到的文件类型，在runtimepath中搜索该类型的所有插件，并执行它们。
filetype plugin indent on

set mouse=a                               "    开启所有模式的mouse支持
set encoding=utf-8                        "    文件编码格式
set clipboard=unnamed                     "    指定自动使用系统剪贴板进行复制和粘贴

" ===
" === Main code display
" ===
set number                                "    显示行号
set relativenumber                        "    相对行号，当前行号为0
set ruler                                 "    在Vim窗口的右下角显示当前光标位置。
set cursorline                            "    高亮光标所在的行
syntax enable                             "    高亮显示
syntax on

" ===
" === Editor behavior
" ===
" Better tab
set tabstop=4
set softtabstop=4
set shiftwidth=4                " 设置缩进的空格数为 4
set expandtab
set autoindent
set cindent
set showmatch                   " highlight matching [{()}]

set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

" Prevent auto line split
set wrap
set tw=0

set indentexpr=
" Better backspace
set backspace=indent,eol,start

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldlevel=99
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level


let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ===
" === Window behaviors
" ===
set splitright
set splitbelow

" ===
" === Status/command bar
" ===
set laststatus=2
set autochdir
set showcmd
set formatoptions-=tc

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

" Searching options
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
nnoremap <leader><space> :nohlsearch<CR>        " turn off search highlight

" ===
" === Restore Cursor Position
" ===
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ===
" === Basic Mappings
" ===

" Set <LEADER> as <SPACE>
let mapleader=","       " leader is comma

" Column (:) mods
map ; :
map q; q:
map <LEADER>/ :!
map <LEADER>r :r !
map <LEADER>sr :%s/

" Save & quit
map Q :q<CR>
map S :w<CR>

" Open the vimrc file anytime
map <LEADER>rc :e ~/.vim/vimrc<CR>

" Undo operations
noremap l u
" Undo in Insert mode
inoremap <C-l> <C-u>

" Insert Key
noremap k i
noremap K I

" Copy to system clipboard
vnoremap Y :w !xclip -i -sel c<CR>

" Search
map <LEADER><CR> :nohlsearch<CR>
noremap = nzz
noremap - Nzz

" Duplicate words
map <LEADER>fd /\(\<\w\+\>\)\_s*\1

" Others
map <LEADER>o o<Esc>u

let g:pydiction_location = expand('~/.vim/tools/Pydiction/complete-dict')
