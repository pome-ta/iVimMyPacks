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
set noundofile
set noswapfile
set nobackup
set ambiwidth=double
" スペース表示
set list
set listchars=tab:»-,trail:-,nbsp:%
set listchars+=space:∙



" ディレクトリ候補表示
set wildmenu

"-----検索関連-----
set incsearch " インクリメンタルサーチ
set ignorecase " 大文字小文字の区別しない
set smartcase " もし検索パターンに大文字があれば大文字小文字を区別する
set hlsearch " 検索結果のハイライトする

"-----タブ・インデント関連-----
set smartindent " スマートインデント 
set tabstop=2 " タブの空白数
set autoindent " 改行時のインデントを継続する
set expandtab " タブの挿入時に空白を入れる
set shiftwidth=2 " smartindentで増減する幅


" 常に Status Line を表示する
set laststatus=2

" StatusLINE設定
function! SetStatusLine()
if mode() =~ 'i'
  let c = 1
  let mode_name = 'I'
elseif mode() =~ 'n'
  let c = 2
  let mode_name = 'N'
elseif mode() =~ 'R'
  let c = 3
  let mode_name = 'R'
else
  let c = 4
  let mode_name = 'V'
endif
return '%' . c . '* [' . mode_name . '] %* %<%F%=%m%r %([%l/%L]%)%{strftime(" %m/%d_%H:%M")}'
endfunction



" --- iceberg 向け --- "
""hi User1 guifg=#cbcfda guibg=#cc517a  "Insert  赤系
""hi User2 guifg=#cbcfda guibg=#2d539e  "Normal  青系
""hi User3 guifg=#cbcfda guibg=#668e3d  "Replace 橙系
""hi User4 guifg=#cbcfda guibg=#4d7f43  "Visual  緑系



hi User1 guibg=#cc3768 guifg=#cdd1e6
hi User2 guibg=#2a3158 guifg=#cdd1e6
hi User3 guibg=#b6662d guifg=#ccd1e6
hi User4 guibg=#598030 guifg=#cdd1e6
"
"hi User1 guibg=indianred guifg=white
"hi User2 guibg=royalblue guifg=white
"hi User3 guibg=coral guifg=white
"hi User4 guibg=SeaGreen guifg=white
"
" desert スキーム調整
"   行表示番号の色
""hi LineNr guifg=grey40
"   該当行強調色
""hi CursorLineNr guifg=grey
"   ディレクトリ候補選択色
""hi WildMenu guibg=gold
"   不可視テキスト色のリセットと調整
""hi NonText None
""hi NonText guifg=grey30
"   背景色
""hi Normal guifg=grey90 guibg=#122132
"   コメント色
""hi comment guifg=grey60


" status line 設置
set statusline=%!SetStatusLine()


" カッコ自動補完
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap [ []<LEFT>
inoremap ` ``<LEFT>
inoremap < <><LEFT>

