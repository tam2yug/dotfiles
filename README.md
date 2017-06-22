# dotfiles

サーバ間で共通の dotfiles を管理します。

## 基本的な考え方

dotfiles の管理には [homeshick](https://github.com/andsens/homeshick) を利用します。

## 使い方

### リポジトリの clone
```
git clone https://github.com/andsens/homeshick.git ~/.homesick/repos/homeshick
git clone https://github.com/tam2yug/dotfiles.git ~/.homesick/repos/dotfiles
```

### homeshickの読込

* bash の場合
```
source ~/.homesick/repos/homeshick/homeshick.sh
source ~/.homesick/repos/homeshick/completions/homeshick-completion.bash
```

* fish の場合
```
. ~/.homesick/repos/homeshick/homeshick.fish
. ~/.homesick/repos/homeshick/completions/homeshick.fish
```

### サブモジュールがあるときは

```
homeshick cd dotfiles
git submodule init
git submodule update
```

### シンボリックリンクの作成

```
homeshick link dotfiles
```

## サーバ固有の設定

* git

各サーバ固有の設定は ~/.gitconfig.local に記述すること

## 参考
* [Homeshickでdotfilesを管理することにした](http://befool.co.jp/blog/jiska/homeshick-git-dotfile-synchronizer/)
* [Homeshick Wiki](https://github.com/andsens/homeshick/wiki)
