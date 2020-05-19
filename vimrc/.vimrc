" vi vim兼容
set nocompatible
" 语法高亮
syntax on
" 显示状态栏
set showmode
set showcmd
" 允许使用鼠标
set mouse=a
" utf
set encoding=utf-8
" 256颜色
set t_Co=256
" 自动语法高亮，根据后缀名
filetype indent on
set autoindent
" 禁用TAB，设置TAB为两个空格
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
" 显示行号
set number
" 光标高连当前行
set cursorline
set textwidth=80
set wrap
set linebreak
set wrapmargin=2
set scrolloff=5
set sidescrolloff=15
set laststatus=2
set ruler
" 高亮匹配括号
set showmatch
set nohlsearch
set incsearch
set ignorecase
set smartcase
" 启动拼写检查
" set spell spelllang=en_us
" 不备份
set nobackup
set noswapfile
set undofile
" 设置备份路径
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
set autochdir
set noerrorbells
set visualbell
set history=1000
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full
" imap { {}<ESC>i<CR><ESC>V<O
" {换行自动缩进
imap {<CR> {}<ESC>i<CR><TAB><ESC>V<O
" set background=dark
" colorscheme solarized
let g:badwolf_darkgutter = 1
colorscheme badwolf
" 代码折叠
set foldmethod=indent
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
" 在左侧显示折叠的层次
" set foldcolumn=1
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-scripts/indentpython.vim'
" vim-autoformat
"F3自动格式化代码
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
"保存时自动格式化代码，针对所有支持的文件
au BufWrite * :Autoformat
let g:formatdef_clangformat_google = '"clang-format -style google -"'
let g:formatters_c = ['clangformat_google']
let g:formatters_cpp = ['clangformat_google']
" vim-autoformat
" Plugin 'mbbill/echofunc'
Plugin 'Lokaltog/vim-powerline'
" vim-powerline
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set laststatus=2
" vim-powerline
Plugin 'tpope/vim-fugitive'
Plugin 'sjl/badwolf'
Plugin 'Valloric/YouCompleteMe'
" YouCompleteMe:语句补全插件
set runtimepath+=~/.vim/bundle/YouCompleteMe
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口"
let g:ycm_collect_identifiers_from_tags_files=1           " 开启 YCM基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings=1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax=1                  " 语法关键字补全
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0                            " 关闭加载.ycm_extra_conf.py提示
let g:ycm_key_list_select_completion=['<c-n>', '<Down>']  " 映射按键,没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion=['<c-p>', '<Up>']
let g:ycm_complete_in_comments=1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings=1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings=1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"             " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>     " 跳转到定义处
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项
Plugin 'taglist.vim'
map <F3> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidt=25
Plugin 'The-NERD-tree'
"NERDTree 配置:F2快捷键显示当前目录树
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25
let g:NERDTreeDirArrows=1
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
let g:NERDTreeGlyphReadOnly="RO"
call vundle#end()            " required
filetype plugin indent on    " required
set clipboard=unnamed
" python
let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99
" python
