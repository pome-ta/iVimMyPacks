hi highlight claer
set bg=dark
syntax enable
set encoding=utf-8
scriptencoding utf-8

" 日本語help
set rtp+=$HOME/iVimMyPacks/vimdoc-ja
" 日本語メイン、無いなら英語
set helplang=ja,en

" colorscheme plugin
set rtp+=$HOME/iVimMyPacks/iceberg.vim
set rtp+=$HOME/iVimMyPacks/elly.vim
color iceberg
"color elly

set number
set clipboard+=unnamed
set wrap
set cursorline

" インデントをスペース2つ分に設定
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
" インデントを調整
set smartindent

set noundofile
set noswapfile
set nobackup

" スペース表示
set list
set listchars=tab:»-,trail:-,nbsp:%
set listchars+=space:∙
