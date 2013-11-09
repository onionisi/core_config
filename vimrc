							
"中文编码
set encoding=UTF-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set gfn=Monaco\ Regular\ 10
colorscheme torte

"禁止GUI光标闪烁，终端下无此功能
set gcr=a:block-blinkon0
"set guifont=Monaco_Linux-Powerline.ttf\ for\ Powerline

"折叠方式
"set foldmethod=syntax
set foldmethod=indent
set foldlevel=99

"高亮显示
set hlsearch

"高亮当前行
set cursorline
					
"设置一行最多80个字符
set textwidth=80

"自动重新读入
set autoread

"退格删除
set backspace=2

"开启标尺
set ruler

"模式显示
set showmode

"显示行号
"set relativenumber
set number

"语法高亮
syntax enable

"允许指定语法高亮配色替换默认方案
syntax on

"关闭文件类型侦测（vundle required!）
filetype off 
"根据侦测到的不同类型加载对应的插件
filetype plugin on
"根据侦测到的不同类型采用不同的缩进格式
filetype indent on
"for python
"au FileType python set omnifunc=pythoncomplete

"设置制表符占用空格数
set tabstop=4
"设置自动缩进每一步的空白数目
set shiftwidth=4
"设置插入<Tab>不为空格为Tab
set noexpandtab

"开启实时搜索功能
set incsearch

"关闭兼容模式
set nocompatible

"取消补全内容以分割子窗口形式出现,只显示补全列表
set completeopt=longest,menu

"定义快捷键到各个子窗口
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"定义快捷键的前缀,即<Leader>
let mapleader=";"

"定义快捷键到软行首和硬行尾
nmap <Leader>h ^
nmap <Leader>e $

"定义快捷键关闭窗口
nmap <Leader>q :qa<CR>
"定义快捷键保持当前窗口内容
nmap <Leader>w :w<CR>

"定义快捷键关闭当前分割窗口
nmap <Leader>s <c-w>q
"定义快捷键关闭所有窗口不保存
nmap <Leader>f :qa!<CR>

"设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
"设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
">>>>插件相关配置

"
" vundle ----------------------------------------------------------------------
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"让Vundle自己管理自己
Bundle 'gmarik/vundle'

"需要管理的插件
"repos on github
"github用户写的插件：用户名/repo名称
"Bundle 'tomtom/tlib_vim'
"Bundle 'tomtom/viki_vim'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'vimim/vimim'

"repos on vim-scripts
"vim-scripts的repo：插件名称
Bundle 'c.vim'
Bundle 'a.vim'
Bundle 'Markdown-syntax'
Bundle 'The-NERD-tree'
Bundle 'cscope_macros.vim'
Bundle 'Color-Scheme-Explorer'
Bundle 'minibufexpl.vim'
Bundle 'taglist.vim'
Bundle 'DrawIt'
Bundle 'Tabular'
Bundle 'python.vim'
Bundle 'pydoc.vim'
Bundle 'Gundo'
Bundle 'TaskList.vim'
Bundle 'Command-T'
Bundle 'grep.vim'
Bundle 'ctrlp.vim'
"Bundle 'Pydiction'
"Bundle 'Markdown'
"Bundle 'cscope.vim'
"Bundle 'indexer.tar.gz'
"Bundle 'DfrankUtil'
"Bundle 'vimprj'
"Bundle 'Source-Explorer-srcexpl.vim'
"Bundle 'multvals.vim'
"Bundle 'cecutil'
"Bundle 'genutils'

"non github reposo
"非github的插件，可以直接使用其git地址
"Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/mattn/emmet-vim.git'
"...

"使用git替代https
let g:vundle_default_git_proto='git'

"Brief help
":BundleList          - list configured bundles
":BundleInstall(!)    - install(update) bundles
":BundleSearch(!) foo - search(or refresh cache first) for foo
":BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"vundle主要就是上面这个四个命令
"BundleInstall是全部重新安装，BundleInstall!则是更新
"一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
"安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载这个插件，
"同时如果需要配置这个插件，也是在vimrc中设置即可
"see :h vundle for more details or wiki for FAQ

"
" cscope ---------------------------------------------------------------------
"
"设置使用quickfix显示cscope结果，目前与cscope_macro插件有冲突
"set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-
"同时搜索cscopeDB和标签文件
set cst
"定义8组快捷键对应s,g,d,c,t,e,f,i8个功能
nmap <Leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <Leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <Leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <Leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <Leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <Leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <Leader>fi :cs find i <C-R>=expand("<cfile>")<CR><CR>  
nmap <Leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR> 

"
" NERDTree ---------------------------------------------------------------------
"
"使用 NERDTree 插件查看工程文件。设置快捷键,速记:file list
nmap <Leader>fl :NERDTreeToggle<CR>
"设置 NERDTree 子窗口宽度
let NERDTreeWinSize=30
"设置 NERDTree 子窗口位置
let NERDTreeWinPos="right"

"
" taglist ----------------------------------------------------------------------
"
set tags=tags
set autochdir
"设置 taglist 插件只显示当前编辑文件的 tag ,而非当前所有打开文件的 tag 内容
let Tlist_Show_One_File=1
"设置显示标签列表子窗口的快捷键。速记:tag list
nnoremap <Leader>tl :TlistToggle<CR>
"设置标签子窗口的宽度
let Tlist_WinWidth=30
"标签列表窗口显示或隐藏不影响整个 gvim 窗口大小
let Tlist_Inc_Winwidth=0
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1

"
" miniBufExp -------------------------------------------------------------------
"
"允许光标在任何位置时用 CTRL-TAB 遍历 buffer
"let g:miniBufExplMapWindowNavVim=1 
"let g:miniBufExplMapWindowNavArrows=1 
"let g:miniBufExplMapCTabSwitchBufs=1 
"let g:miniBufExplModSelTarget=1 
let g:miniBufExplorerMoreThanOne=1

"
" SuperTab ---------------------------------------------------------------------
"
let g:SuperTabRetainCompletionType=2
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止
let g:SuperTabDefaultCompletionType="context"
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>,
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式,
" 还有其他的补全方式, 你可以看看下面的一些帮助:
" :help ins-completion
" :help compl-omni
set completeopt=menuone,longest,preview

"
" vimim ------------------------------------------------------------------------
"
"" 输入法循环
"let g:vimim_toggle = 'baidu,sogou,qq,google' 
"" 双拼选项
"let g:vimim_shuangpin = 0   
"" 中文标点
"let g:vimim_punctuation = 2   
"" 插件位置
"let g:vimim_plugin = '/home/onionisi/.vim/plugin'  
"" 自己的云
"let g:vimim_mycloud = 0   
"" 中文模式
"let g:vimim_mode = 'dynamic'
"" 热键开关
"let g:vimim_map = 'c-bslash'
"" 云输入
"let g:vimim_cloud = 'baidu,sogou,qq,google' 

"
" powerline ------------------------------------------------------------------
"
let g:Powerline_symbols='fancy'

"
" pydoc     ------------------------------------------------------------------
"
let g:pydoc_cmd = '/usr/bin/pydoc2'
let g:pydoc_open_cmd = 'tabnew'
"let g:pydoc_highlight = 0

"
" Gundo     ------------------------------------------------------------------
"
map <Leader>td <Plug>TaskList

"
" TaskList  ------------------------------------------------------------------
"
map <Leader>g :GundoToggle<CR>

"
" Tabular   ------------------------------------------------------------------
"
"if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a/ :Tabularize //\/<CR>
	vmap <Leader>a/ :Tabularize //\/<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
"endif

"
" Ack       ------------------------------------------------------------------
"
nmap <Leader>a :Ack!

"
" ctrlp     ------------------------------------------------------------------
"
"let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
