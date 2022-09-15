# iVimMyPacks

[iVim](https://apps.apple.com/jp/app/ivim/id1266544660) と、[WorkingCopy](https://apps.apple.com/jp/app/working-copy-git-client/id896694807) との連携


## Working Copy

1. [iVimMyPacks(このリポジトリ)](https://github.com/pome-ta/iVimMyPacks) をclone
1. Submodules 機能を使ってplugin をadd


## iVim

### 本体の`.vimrc`

ディレクトリ直下の`.vimrc` に以下を記載。`runtimepath` で、iVimMyPacks の`.vimrc` を読ませる


``` .vimrc
source $HOME/iVimMyPacks/.vimrc

```

### Working Copy ディレクトリ連携

1. `:iexdir add` -> [return]
1. アクセスを許可し、iVimMyPacks を追加



## todo

- plugin のディレクトリ構成
- iVim機能のkeyboard setting
  - 挙動確認
  - 言語ごとに書きやすい配置
    - スクリプト実行できるように
- iVimMyPacks側の`.vimrc` の追記
  - help のみfont-size 変更
  - 拡張子ごとに挙動変更
- vimdoc-ja バージョン違い
  - Vim9 script 対応とか結構違う、バージョンで管理できる？
    - 8.2 -> vimdoc-ja
    - 8.1 -> iVim

