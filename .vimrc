hi highlight claer
set bg=dark
syntax enable
set encoding=utf-8
scriptencoding utf-8



isete insert {'buttons':[
     \{'keys':[{'title':'/','type':'insert','contents':'/'}]
     \}],'locations':[2]}

isete append {'buttons':[
     \{'keys':[{'title':'`','type':'insert','contents':'`'}]
     \}],'locations':[2]}

isete append {'buttons':[
     \{'keys':[{'title':'|','type':'insert','contents':'|'}]
     \}],'locations':[2]}

isete append {'buttons':[
     \{'keys':[{'title':'\','type':'insert','contents':'\'}]
     \}],'locations':[2]}


isete append {'buttons':[
     \{'keys':[{'title':'~','type':'insert','contents':'~'}]
     \}],'locations':[2]}

isete insert {'buttons':[
     \{'keys':[{'title':'▶︎','type':'insert','contents':':!python3 \%'}]
     \}],'locations':[10]}



" 日本語help
set rtp+=$HOME/iVimMyPacks/vimdoc-ja
" 日本語メイン、無いなら英語
set helplang=ja,en

" colorscheme plugin
set rtp+=$HOME/iVimMyPacks/iceberg.vim
color iceberg

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
"Insert 赤系
hi User2 guibg=#2a3158 guifg=#cdd1e6 
"Normal 青系
hi User3 guibg=#c57339 guifg=#ccd1e6 
"Replace 橙系
hi User4 guibg=#668e3d guifg=#cdd1e6 
"Visual 緑系

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


" 表示行単位で上下移動するように
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
" 逆に普通の行単位で移動したい時のために逆の map も設定しておく
nnoremap gj j
nnoremap gk k

