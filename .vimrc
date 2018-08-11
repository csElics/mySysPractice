"vim内部字节编码方式
set encoding=utf8
"不开启vi兼容模式
set nocompatible
"高亮当前行
set cursorline
"开启语法高亮
syntax on
"识别文件编码
set fileencodings=ucs-bom,utf-8,latin1
"右下角显示当前光标的行列信息
set ruler
"右下角显示一个完整的命令已经完成的部分
set showcmd
"显示行号
set number
"智能缩进
set smartindent
"自动缩进所使用的空白长度
set shiftwidth=4
"高亮显示匹配的括号
set showmatch
"设置背景色
set background=dark
"定义tab所等同的空格长度
set tabstop=4
"编辑时将tab替换为空格
set expandtab
"高亮搜索结果
set hlsearch
"在键入目标字符串的过程中就同时开始搜索
set incsearch
"设置折叠方式
set foldmethod=marker
"帮助系统设置为中文
set helplang=cn
"文件在Vim之外修改时自动重新读入
set autoread
"搜索是不区分大小写
set ignorecase
"正则
set magic
"备份文件
set backup
"备份文件路径
set backupdir=~/vimbackup
"不生成undo文件
set noundofile
"取消成功写入时才备份
set nowb
"不使用swp文件
set noswapfile
"在breakat字符处而不是最后一个字符处断行
set lbr
"自动缩进
set ai
"禁用自动补全在上方所弹出的那个窗口
set completeopt-=preview
"搜索用grep
set grepprg=/bin/grep\ -nH
"上下滚动时光标距离底部行数
set so=7
"支持256色
set t_Co=256
"ctag保存标签路径
set tags=/home/map/ctags/tags;
"显示状态栏
set laststatus=2


"关闭文件类型检测 vundle前置配置
filetype off
"vundle路径
set rtp+=~/.vim/bundle/Vundle.vim
"开始调用vundle 参数指定插件安装路径 默认与vundle同目录
call vundle#begin()

"vundle管理vundle 必选
Plugin 'gmarik/Vundle.vim'
"match html 标签插件
Plugin 'matchit.zip'
"最近浏览过的文件
Plugin 'bufexplorer.zip'
"php格式化工具
Plugin 'stephpy/vim-php-cs-fixer'
"php自动补全
Plugin 'shawncplus/phpcomplete.vim'
"管理php命名空间
Plugin 'arnaud-lb/vim-php-namespace'
"snippets 依赖
Plugin 'MarcWeber/vim-addon-mw-utils'
"snippets 依赖
Plugin 'tomtom/tlib_vim'
"snippets 依赖
Plugin 'garbas/vim-snipmate'
"代码自动补全 可自定义
Plugin 'honza/vim-snippets'
"集成各配色主题
Plugin 'flazz/vim-colorschemes'
"ag 代码搜索工具
Plugin 'rking/ag.vim'
"tmux跳转工具
Plugin 'christoomey/vim-tmux-navigator'
"加括号加引号方便
Plugin 'tpope/vim-surround'
"快捷移到光标
Plugin 'Lokaltog/vim-easymotion'
"识别文件中所有tag 右侧形成tag窗口 看函数 变量方便
Plugin 'majutsushi/tagbar'
"显示出gitdiff
Plugin 'airblade/vim-gitgutter'
"tmux 工具 可以进行复制 粘贴
Plugin 'tpope/vim-tbone'
"easyclip 依赖
Plugin 'tpope/vim-repeat'
"molokai字体
Plugin 'tomasr/molokai'
"更容易去copy
Plugin 'svermeulen/vim-easyclip'
"markdonw 依赖
Plugin 'godlygeek/tabular'
"Syntax highlighting, matching rules and mappings for the original Markdown and extensions
Plugin 'plasticboy/vim-markdown'
"php注释生成插件
Plugin 'https://github.com/vim-scripts/PDV--phpDocumentor-for-Vim.git'
"状态行
Plugin 'https://github.com/bling/vim-airline.git'
"注释代码
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
"括号引号自动成对
Plugin 'https://github.com/Raimondi/delimitMate.git'
"自动刷新ctags
Plugin 'https://github.com/craigemery/vim-autotag.git'
"目录树
Plugin 'https://github.com/scrooloose/nerdtree.git'
"文件搜索
Plugin 'https://github.com/kien/ctrlp.vim.git'
"类Sublime
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
"puppet格式 高亮支持
Plugin 'https://github.com/rodjek/vim-puppet.git'
"php 5.3-5.6支持
Plugin 'https://github.com/StanAngeloff/php.vim.git'
"format js css html
Plugin 'https://github.com/maksimr/vim-jsbeautify.git'
"显示尾部的空格为红色
Plugin 'https://github.com/bronson/vim-trailing-whitespace.git'
"自动补全
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
"自动set paste工具
Plugin 'https://github.com/ConradIrwin/vim-bracketed-paste'
"断点高度工具
Plugin 'https://github.com/brookhong/DBGPavim.git'

"结束vundle调用
call vundle#end()
"打开文件类型检测插件 vundle后置配置
filetype plugin indent on


"经典配色主题
colorscheme molokai


"搜索高亮色
highlight Search guifg=wheat guibg=peru ctermfg=223 ctermbg=172
"键入字符过程高两色
highlight IncSearch guifg=wheat guibg=peru ctermfg=223 ctermbg=172
"高亮下拉菜单 如命令补齐时的菜单
highlight Pmenu ctermfg=Black ctermbg=Grey
"高亮下拉菜单中的选中项 如命令补齐时的菜单
highlight PmenuSel ctermfg=LightBlue ctermbg=DarkBlue


"设置<leader>映射变量
let mapleader = ","
"全局设置<leader>映射变量 类似全局变量
let g:mapleader = ","
"设置配色模板
let g:solarized_termcolors=256
"显示绝对路径
let g:airline_section_c = '%F'
"YouCompleteMe-python路径
let g:ycm_server_python_interpreter='/home/map/.jumbo/bin/python2.7'
"YouCompleteMe-配置py文件路径
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"YouCompleteMe-语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
"YouCompleteMe-完成操作后自动补全窗口不消失
let g:ycm_autoclose_preview_window_after_completion=1
"php_cs_fixer-phar文件路径
let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer.phar"
"php_cs_fixer-支持的代码规范level
let g:php_cs_fixer_level = "all"
"php_cs_fixer-配置
let g:php_cs_fixer_config = "default"
"php_cs_fixer-php路径
let g:php_cs_fixer_php_path = "/home/map/odp_newretail/php/bin/php"
"php_cs_fixer-代码格式化规范
let g:php_cs_fixer_rules = "@PSR2"
"php_cs_fixer-启用默认快捷命令(<leader>pcd)
let g:php_cs_fixer_enable_default_mapping = 1
"php_cs_fixer-显示要修复但没有修复的代码
let g:php_cs_fixer_dry_run = 0
"php_cs_fixer-显示处理过程输出的信息
let g:php_cs_fixer_verbose = 0
"crtlp-查找文件 包括符号链接文件
let g:ctrlp_follow_symlinks = 1
"markdown-不折叠显示
let g:vim_markdown_folding_disabled=1
"DBGPavim(调试工具)-监听端口
let g:dbgPavimPort = 9009
"DBGPavim-入口处不停止程序
let g:dbgPavimBreakAtEntry = 0
"EasyMotion(跳转工具)-取消其默认map设置
let g:EasyMotion_do_mapping = 0
"EasyMotion-区分大小写
let g:EasyMotion_smartcase = 1


"BufExplorer-查看已打开文件
map <leader>o :BufExplorer<cr>

"Nerdtree-打开树目录
map <leader>xp :NERDTree<cr>
"Nerdtree-切换下一个tab(用t打开新文件)
map <leader>g gt
"Nerdtree-切换上一个tab
map <leader>y gT
"Nerdtree-快速打开Nerdtree
command! I normal <leader>xp<c-l>

"Ag-按关键词查找
map <leader>e :Ag! -f <C-R>=expand("<cword>")<CR><CR>

"unkonwn
map <leader>t <C-]>

"Tagbar-查看文件内类,函数,变量
map <leader>xt :TagbarToggle<cr>

"Jsbeautify-格式化Html
map <leader>xfh :call HtmlBeautify()<cr>
"Jsbeautify-格式化Js
map <leader>xfj :call JsBeautify()<cr>

"DBGPavim-cli模式调试当前文件
map <leader>dd :Dp<cr>
"DBGPavim-step over(下一步)
map <leader>dn <F3>
"DBGPavim-后台开启调试服务器
map <leader>dr <F5>
"DBGPavim-停止后台调试服务器
map <leader>ds <F6>
"DBGPavim-当前行切换断点(开启&关闭断点)
map <leader>db <F10>
"DBGPavim-当前光标处显示变量取值
map <leader>dp <F12>

"Vim-快速退出
map <leader>q :q<ESC>
"Vim-新建一个横屏窗口
map <leader>s :sp<cr><c-j>
"Vim-横屏窗口间快速切换(下)
map <C-j> <C-W>j
"Vim-横屏窗口间快速切换(上)
map <C-k> <C-W>k
"Vim-竖屏窗口间快速切换(左)
map <C-h> <C-W>h
"Vim-竖屏窗口间快速切换(右)
map <C-l> <C-W>l
"Vim-到行首
map 0 ^
"Vim-搜索
map <space> /
"Vim-去除高亮
map <leader><cr> :noh<cr>
"Vim-高亮光标所在的当前单词(比#慢)
map <leader>d #*
"Vim-方便粘贴
map <leader>i :set paste!<CR>i
"Vim-快速保存
nmap <leader>w :w!<cr>
"Vim-是否显示行号切换 方便复制
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
"Vim-保存文件不需要权限
command W :w !sudo tee %

"Php-执行当前php文件
map <leader>r :!php %<cr>
"Php-检查当前php方法
map <cr> :!php -l %<cr>
"Php-方便调试
map <leader>k :set paste<cr>yawoerror_log(print_r("\n<esc>pa\=error::ljz===>>".__CLASS__."->".__FUNCTION__."<<========================>>>>> \n", true), 3, "/tmp/ljz.log");<ESC>oerror_log(print_r($<esc>pa, true), 3, "/tmp/ljz.log");<esc>,w:set nopaste<cr>
"PhpDoc-生成注释
nnoremap <C-Y> :call PhpDocSingle()<CR>
"PhpDoc-生成注释
vnoremap <C-Y> :call PhpDocRange()<CR>
"Php_cs_fixer-格式化目录
nnoremap <leader>xfd :call PhpCsFixerFixDirectory()<CR>
"Php_cs_fixer-格式化文件
nnoremap <leader>xff :call PhpCsFixerFixFile()<CR><cr>:e %<cr>

"Easymotion-跳转后面某一行
map <Leader>j <Plug>(easymotion-j)
"Easymotion-单字符查找 按提示跳转到对应行的对应字符
nmap s <Plug>(easymotion-s)

"Git-合并冲突代码(1号窗口)
map <silent> <leader>1 :diffget 1<CR>:diffupdate<CR>
"Git-合并冲突代码(2号窗口)
map <silent> <leader>2 :diffget 2<CR>:diffupdate<CR>
"Git-合并冲突代码(3号窗口)
map <silent> <leader>3 :diffget 3<CR>:diffupdate<CR>
"Git-合并冲突代码(4号窗口)
map <silent> <leader>4 :diffget 4<CR>:diffupdate<CR>

"SnipMate-解决代码生成与youcompleteme这间的冲突 用c-j来触发生成代码
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
"SnipMate-解决代码生成与youcompleteme这间的冲突 用c-j来触发生成代码
smap <C-J> <Plug>snipMateNextOrTrigger

"Jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"vim文件头配置
autocmd BufNewFile *.py,*.cc,*.sh,*.java,*.php exec ":call SetTitle()"
"新建.py,.cc,.java,.sh,
""定义函数SetTitle，自动插入文件头
func SetTitle()
        "如果文件类型为.sh文件
        if &filetype == 'python'
                call setline(1, "\#coding=utf8")
                call setline(2, "\"\"\"")
                call setline(3, "\# Author: lijinzhu")
                call setline(4, "\# Created Time : ".strftime("%c"))
                call setline(5, "")
                call setline(6, "\# File Name: ".expand("%"))
                call setline(7, "\# Description:")
                call setline(8, "")
                call setline(9, "\"\"\"")
                call setline(10,"")
        endif
        if &filetype == 'java'
                call setline(1, "//coding=utf8")
                call setline(2, "/*************************************************************************")
                call setline(3, "\ @Author: lijinzhu")
                call setline(4, "\ @Created Time : ".strftime("%c"))
                call setline(5, "")
                call setline(6, "\ @File Name: ".expand("%"))
                call setline(7, "\ @Description:")
                call setline(8, "")
                call setline(9, " ************************************************************************/")
                call setline(10,"")
        endif
        if &filetype == 'php'
                call setline(1, "<?php")
                call setline(2, "/**")
                call setline(3, " *")
                call setline(4, " *\ Create by Vim")
                call setline(5, " *\ User: lijinzhu")
                call setline(6, " *\ Date: " . strftime("%F"))
                call setline(7, " *\ Time: " . strftime("%H:%M:%S"))
                call setline(8, " *\ Desc:")
                call setline(9, " *")
                call setline(10, " */")
                call setline(11, "")
        endif

endfunc
