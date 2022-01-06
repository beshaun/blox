
"_______________________________________________________________________________
"                                                                     set    {{{

" inside_be_wiki-PLUG   |  set nocompatible                                     "设置不兼容
set smarttab                                                                    "Use 'shiftwidth' when using <Tab>
                                                                                "in front of a line. By default
                                                                                "it's used only for shift commands (<, >).
set smartindent                                                                 "smart when using tabs
set smartcase

set autoindent
set expandtab
set history=10000
set linebreak                                                                   "自动换行
set ruler                                                                       "总是显示下行数
" set showcmd                                                                     "显示输入命令

set nobackup                                                                    "不备份
set nowritebackup
set noswapfile

set complete-=i                                                                 "disable scanning included files
set complete-=t                                                                 "disable searching tags

set hlsearch                                                                    "Enable search highlighting.
set incsearch
set ignorecase                                                                  "搜索忽略大小写
set showmatch

set cindent
set so=7

set virtualedit=block                                                           "eab virtualedit in block mode

set cmdheight=2
set cmdwinheight=50

" Disable modeline.
" set modelines=0
" set nomodeline
" autocmd MyAutoCmd BufRead, BufWritePost *.txt setlocal modelines=5 modeline

" set updatetime=100                                                              "异步时间

set list
set emoji

set colorcolumn=80                                                              "十字定位线
set nofixendofline
set cursorcolumn
set cursorline

" set number                                                                    "行号
" set relativenumber                                                            "递进行号

set tabstop=4                                                                   "requiet->:180
set softtabstop=4
set backspace=2
set shiftwidth=4
set wildmenu
set wildmode=longest,list,full
set listchars=nbsp:¬,tab:»·,trail:·,extends:>
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

set formatoptions+=r                                                            "Add asterisks in block comments 块标记*号

set ai                                                                          "Auto indent
set si                                                                          "Smart indent
set autoindent smartindent

function! GnuIndent()
    setlocal cinptions=4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
    setlocal shiftwidth=2
    setlocal tabstop=8
    setlocal noexpandtab
endfunction

set backspace=start,eol,indent
" }}}___________________________________________________________________________

"_______________________________________________________________________________
"                                                                   auto-cmd {{{
filetype indent on                                                              "自适应语言的智能缩进
syntax enable
syntax on
  autocmd InsertLeave,WinEnter * set cursorline
  autocmd InsertLeave,WinEnter * set nocursorline
autocmd BufNewFile,BufRead *.ejs set filetype=html

autocmd InsertLeave * set nopaste                                               " Turn off paste mode when leaving insert离开状态关闭粘贴

autocmd ColorScheme * highlight Whitespace ctermfg=red guifg=#FF0000
autocmd BufWritePre * :%s/\s\+$//e

" }}}___________________________________________________________________________

"_______________________________________________________________________________
"                                                                       if   {{{
if !1 | finish | endif                                                          " stop loading config if it's on tiny or small太小停滞加载

if has('neovim')                                                                " incremental substitution 递增 (neovim)
    set inccommand=split
endif

" if has('conceal')                                                             " For conceal markers.对隐藏标记
  " set conceallevel=2 concealcursor=niv
" endif

if ! has('gui_running')                                                         " Speed up transition from modes
    set ttimeoutlen=10
    augroup FastEscape
        autocmd InsertEnter * set timeoutlen=0
        autocmd InsertLeave * set timeoutlen=1000
    augroup END
endif

" }}}___________________________________________________________________________

