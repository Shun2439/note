# Linuxの基本(?)

- さくらのクラウドシェル

    <https://secure.sakura.ad.jp/cloud-shell/cpanel/>

## シェル操作

| コマンドなど | 簡単な説明 |
| --- | --- |
| ls -a | ファイル表示 |
| mkdir <ディレクトリ名> | ディレクトリの作成 |
| cd <ディレクトリ名> | ディレクトリ移動(zがおすすめ) |
| ../ | 一つ上のディレクトリ |
| ./ | 今のディレクトリ |
| rm -r <ディレクトリ名> | ディレクトリを消す |
| cd ~/ | ホームディレクトリ移動 |
| cd | ルートディレクトリに移動 |
| [tab] | シェルでの補完(積極的に使おう) |
| touch <ファイルの名前> | 空ファイルの作成 |
| file <ファイル名> | ファイルの属性を調べる |
| cat <ファイル名> | ファイルの中身を見る |
| strings <ファイル名> | ファイルの中のテキストだけを表示 |
| cd - | 直前にいたディレクトリにもどる |

- ゴミ箱は基本ないよ！

[練習できるサイト(クイズ形式)](https://cmdchallenge.com/#/list_files)

[linux以外の古いマシン（興味あったら）](https://www.pcjs.org/)

### パイプ

```bash
strings hoge.txt | grep Hello 
```

## WSL

- Windows Subsystem for Linux (Windows上でLinuxを実行できる!)

| コマンド | 説明 |
| --- | --- |
| explorer.exe ./ | エクスプローラーを同じディレクトリで起動 |
| cat foo.c | clip.exe | foo.cの内容をWindows上のクリップボードに入れる |

- apt

## apt

- メジャーなパッケージ(ソフトウェア)マネージャー(管理ソフト)
- Debian系でよく使われている(UbuntuもDebian系)

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install sl -y
```

- `sudo`は管理者権限を借りるコマンド
- `y`は`—-yes`の略。「ソフト入れますか？」の質問を飛ばしてくれる。

```bash
sl
```
