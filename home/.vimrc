"Chinese coding
set encoding=UTF-8
" set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set gfn=Monaco\ Regular\ 10

"禁止GUI光标闪烁，终端下无此功能
set gcr=a:block-blinkon0
set guifont=Monaco:h12

"折叠方式
set foldmethod=syntax
"set foldmethod=indent
set foldlevel=99

"高亮显示
set hlsearch

"高亮当前行列
set cursorline
set cursorcolumn

"one line 80 chars
set textwidth=80

"自动重新读入
set autoread

"退格删除
set backspace=2

"ruler on
set ruler

"模式显示
set showmode

"显示行号
"set relativenumber
set number

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
	set undofile
	set undolevels=500
	set undoreload=500
endif

"关闭文件类型侦测（vundle required!）
filetype off

"语法高亮
syntax enable
"允许指定语法高亮配色替换默认方案
syntax on

set smartindent
"设置制表符占用空格数
set tabstop=4
"设置自动缩进每一步的空白数目
set shiftwidth=4
"设置插入<Tab>不为空格为Tab
set expandtab

"开启实时搜索功能
set incsearch

"关闭兼容模式
set nocompatible

"取消补全内容以分割子窗口形式出现,只显示补全列表
set completeopt=longest,menu

"定义快捷键的前缀,即<Leader>
let mapleader=";"

"定义快捷键到各个子窗口
nnoremap <Leader>j <c-w>j
nnoremap <Leader>k <c-w>k
nnoremap <Leader>r <c-w>l
nnoremap <Leader>l <c-w>h

"定义快捷键到各buffer
nnoremap <Leader>n :bn<cr>
nnoremap <Leader>u :bp<cr>
nnoremap <Leader>f :bf<cr>
nnoremap <Leader>m :bl<cr>

"定义快捷键到软行首和硬行尾 0, g_
nnoremap <Leader>h ^
nnoremap <Leader>e $

"定义快捷键关闭buffer
nnoremap <Leader>d :bd<CR>
"定义快捷键关闭窗口
nnoremap <Leader>q :qa<CR>
"定义快捷键保持当前窗口内容
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wa<CR>

"定义快捷键关闭当前分割窗口
nnoremap <Leader>s <c-w>q
"定义快捷键关闭所有窗口不保存
nnoremap <Leader>Q :qa!<CR>

"设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
"设置快捷键将系统剪贴板内容粘贴至 vim
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
"
" " Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

let g:python_host_prog = '/opt/pyenv/versions/py2neovim/bin/python'
let g:python3_host_prog = '/opt/pyenv/versions/py3neovim/bin/python'
">>>>插件相关配置

" vundle ----------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle/
call vundle#begin()

Plugin 'gmarik/Vundle'

"repos on github
"
"managed by yaourt avoid manual install
" Plugin 'Valloric/YouCompleteMe' 
Plugin 'rdnetto/YCM-Generator' 
Plugin 'jsfaint/gen_tags.vim' 
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
" Plugin 'scrooloose/syntastic'
" Plugin 'benekastah/neomake'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-sleuth'
" Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'alvan/vim-closetag'

Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'
Plugin 'zah/nim.vim'
Plugin 'klen/python-mode'
Plugin 'jceb/vim-orgmode'

Plugin 'flazz/vim-colorschemes'
Plugin 'jlanzarotta/colorSchemeExplorer'
Plugin 'dracula/vim'
Plugin 'sjl/vitality.vim'
Plugin 'Chiel92/vim-autoformat'

Plugin 'sheerun/vim-polyglot'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'

Plugin 'leafgarland/typescript-vim'
" Plugin 'HerringtonDarkholme/yats.vim'
" Plugin 'mhartington/nvim-typescript'

"repos on vim-scripts
Plugin 'c.vim'
Plugin 'a.vim'
Plugin 'cscope_macros.vim'
Plugin 'DrawIt'
Plugin 'TaskList.vim'
Plugin 'VisIncr'
" Plugin 'grep.vim'
" Plugin 'minibufexpl.vim'

"non github reposo
"Plugin 'git://git.wincent.com/command-t.git'
"...

call vundle#end()

filetype on
"根据侦测到的不同类型加载对应的插件
filetype plugin on
"根据侦测到的不同类型采用不同的缩进格式
filetype indent on

au FileType javascript,coffee,sass,scss,less,css setlocal ts=2 sw=2 sts=2 et
au FileType python setlocal ts=4 sw=4 sts=4 et tw=80
au FileType c,cpp setlocal ts=4 sw=4 sts=4 et

"使用git替代https
let g:vundle_default_git_proto='git'

"需要插件加载完毕，否则报错
" set background=dark
" colorscheme solarized
" colorscheme molokai
colorscheme Tomorrow-Night-Eighties
let g:rehash256 = 1

" YouCompleteMe --------------------------------------------------------------
" according to python_host_prog
let g:ycm_server_python_interpreter = '/usr/bin/python3' 
let g:ycm_python_binary_path = 'python'
let g:ycm_log_level = 'error'
let g:ycm_global_ycm_extra_conf = '~/.ycm/ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_filetype_whitelist = {
      \ 'c' : 1,
      \ 'cpp' : 1,
      \ 'python' : 1,
      \ 'javascript' : 1,
      \}
map <Leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
au FileType c,cpp,objc,objcpp map <Leader>gp :YcmCompleter GetParent<CR>
au FileType python,javascript,typescript map <Leader>gr :YcmCompleter GoToReferences<CR>

" gen_tags.vim ---------------------------------------------------------------
let g:gen_tags#use_cache_dir = 0
nmap <Leader>gt :GenCtags<CR>
nmap <Leader>tc :ClearCtags!<CR>
nmap <Leader>gg :GenGTAGS<CR>
nmap <Leader>gc :ClearGTAGS!<CR>

" cscope ---------------------------------------------------------------------
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

" NERDTree ---------------------------------------------------------------------
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=30
let NERDTreeWinPos="right"
let NERDTreeIgnore=['\.pyc$','\.o$']

" tagbar ----------------------------------------------------------------------
"tagbar relies on the features supported by exuberant ctags
if has("unix")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		" Do Mac stuff here
		let g:tarbar_ctags_bin = '/usr/local/bin/ctags'
	endif
endif
nnoremap <Leader>tl :TagbarToggle<CR>
let g:tagbar_width=30
let g:tagbar_left=1
"标签列表窗口缩放按最长tag
let g:tagbar_zoomwidth=0

" miniBufExp -------------------------------------------------------------------
"允许光标在任何位置时用 CTRL-TAB 遍历 buffer
"let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplMapWindowNavArrows=1
"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplModSelTarget=1
" let g:miniBufExplorerMoreThanOne=1

" airline   ------------------------------------------------------------------
" let g:airline_section_b='%{strftime("%c")}%'
" let g:airline_section_y='BN: %{bufnr("%")}'
" smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" use symbols
let g:airline_theme='powerlineish'
" let g:airline_theme='wombat'
let g:airline_powerline_fonts=1
let g:airline_symbols = {}
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_left_sep = '»'
" let g:airline_right_sep = '«'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Gundo     ------------------------------------------------------------------
map <Leader>ud :GundoToggle<CR>

" TaskList  ------------------------------------------------------------------
map <Leader>td <Plug>TaskList

" Tabular   ------------------------------------------------------------------
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a/ :Tabularize //\/<CR>
	vmap <Leader>a/ :Tabularize //\/<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" ctrlp     ------------------------------------------------------------------
" let g:ctrlp_map = ',,'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc     " MacOSX/Linux
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" let g:ctrlp_use_caching = 0
" if executable('ag')
" 	set grepprg = "ag --nogroup --nocolor"
" 	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" else
" 	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" 	let g:ctrlp_prompt_mappings = {
" 	'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
" 	}
" endif

" fzf     ------------------------------------------------------------------
set rtp+=/usr/share/vim/vimfiles
let g:fzf_command_prefix = 'F'
map ,, :FFiles<cr>
map <Leader>zg :FGitFiles<cr>
map <Leader>zm :FMarks<cr>
map <Leader>za :FAg 

" syntastic ------------------------------------------------------------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_quiet_messages = {'level': 'warnings'}
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" neomake   ------------------------------------------------------------------
" autocmd! BufWritePost * Neomake
" let g:neomake_javascript_jshint_maker = {
"     \ 'args': ['--verbose'],
"     \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
"     \ }
" let g:neomake_javascript_enabled_makers = ['eslint']

" ale   ----------------------------------------------------------------------
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
" let g:ale_open_list = 1
" let g:ale_fix_on_save = 1
let g:ale_fixers = {
		  \	'javascript': ['eslint'],
		  \}

" ack.vim  -------------------------------------------------------------------
let g:ackprg = "ag --nogroup --nocolor --column"
map <Leader>sa :Ack<space>

" markdown-preview.vim  ------------------------------------------------------
let g:mkdp_path_to_chrome = "chromium"
" let g:mkdp_auto_start = 0
" let g:mkdp_auto_open = 0
" let g:mkdp_auto_close = 1
" let g:mkdp_refresh_slow = 0
" let g:mkdp_command_for_global = 0
nmap <silent> <Leader>me <Plug>MarkdownPreview        " for normal mode
imap <silent> <Leader>me <Plug>MarkdownPreview        " for insert mode
nmap <silent> <Leader>md <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <Leader>md <Plug>StopMarkdownPreview    " for insert mode

" vim-go    ------------------------------------------------------------------
let g:go_disable_autoinstall = 1

" nim.vim    -----------------------------------------------------------------
fun! JumpToDef()
	if exists("*GoToDefinition_" . &filetype)
		call GoToDefinition_{&filetype}()
	else
		exe "norm! \<C-]>"
	endif
endf

nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i

" python-mode    -------------------------------------------------------------
let g:pymode_motion = 1
let g:pymode_rope = 0

" Clear filetype flags before changing runtimepath to force Vim to reload them.
" if exists("g:did_load_filetypes")
" 	filetype off
" 	filetype plugin indent off
" endif
" set runtimepath+=/usr/local/Cellar/go/1.3/libexec/misc/vim
" filetype plugin indent on

" vim-autoformat -------------------------------------------------------------
" au BufWrite * :Autoformat
map <c-a>f :Autoformat<cr>
imap <c-a>f :Autoformat<cr>
vmap <c-a>f :Autoformat<cr>
" let g:autoformat_verbosemode=1
" let g:autoformat_autoindent = 0

" dracula/vim ---------------------------------------------------------------
color dracula
