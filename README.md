# dotfiles

サーバ間で共通の dotfiles を管理します。

## 基本的な考え方

dotfiles の管理には [homeshick](https://github.com/andsens/homeshick) を利用します。

## 使い方

```
git clone https://github.com/andsens/homeshick.git ~/.homesick/repos/homeshick
git clone https://github.com/tam2yug/dotfiles.git ~/.homesick/repos/dotfiles
```

### シェルの設定

* bash の場合
```
printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.bashrc
printf '\nsource "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"' >> $HOME/.bashrc
source ~/.bashrc
```

* fish の場合
```
echo -en '\n. "$HOME/.homesick/repos/homeshick/homeshick.fish"' >> "$HOME/.config/fish/config.fish"
echo -en '\n. "$HOME/.homesick/repos/homeshick/completions/homeshick.fish"' >> "$HOME/.config/fish/config.fish"
```

### サブモジュールがあるときは

```
homeshick cd dotfiles
git submodule init
git submodule update
```

### シンボリックリンクの作成

```
homechick link dotfiles
```

## サーバ固有の設定

* git

各サーバ固有の設定は ~/.gitconfig.local に記述すること

## 参考
* [Homeshickでdotfilesを管理することにした](http://befool.co.jp/blog/jiska/homeshick-git-dotfile-synchronizer/)
* [Homeshick Wiki](https://github.com/andsens/homeshick/wiki)
