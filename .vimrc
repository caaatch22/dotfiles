"==================="
" use as a fallback option when no nvim env
"==================="

" basics
set nocompatible
set wildmenu "按TAB键时命令行自动补齐"
set number
set ruler "显示当前光标位置"
set autoread "文件在Vim之外修改过，自动重新读入"
set autowrite "设置自动保存内容"
set autochdir "当前目录随着被编辑文件的改变而改变"
set mouse=a "开启鼠标支持"
set backspace=indent,eol,start

"9 to end of line, 0 to head"
map 9 $
map <silent>  <C-A>  gg v G "Ctrl-A 选中所有内容"

syntax on
filetype on "启动文件类型检查"
filetype plugin on "运行vim加载文件类型插件"

" indent
set cindent "c/c++自动缩进"
set smartindent
" set autoindent " extras of space when copied into vim
filetype indent on "根据文件类型进行缩进"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set smarttab

" no swap
set noswapfile
set nobackup
set nowritebackup

" search
set ignorecase
set showmatch
set ignorecase
set hlsearch
nnoremap <esc> :noh<return><esc>
set incsearch

" Use a line cursor within insert mode and a block cursor else
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

