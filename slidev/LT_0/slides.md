---
theme: seriph
background: https://source.unsplash.com/collection/94734566/1920x1080
class: text-center
highlighter: shiki
lineNumbers: false
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
drawings:
  persist: false
transition: slide-left
title: Vimでコーディングを楽しもう！
mdc: true
---

# Vimでコーディングを楽しもう！

2-3 小林 俊太

---
layout: two-cols
---

# Vimってなに?

- **"編集"に優れている**

- てきすとえでぃた

	- ~~VScodeと一緒~~

- 愛好家が多い

	- Slackがあるらしい！？

- CLIで動く

	- 手軽に編集できる

<br>

~~決して必須ってわけではないので「そんなのがあるんだな～」ぐらいに思ってもらえればダイジョブ~~

今回は編集について少し話します

::right::

<iframe width="400" height="250" src="https://www.youtube.com/embed/P7LNU9HYr7M?si=mxYdq5mT5ujmE5ZG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

---
layout: default
---

Vimとの出会い

- 最初にLinuxを入れた時にたまたま入っていた

- ターミナルソフトが起動するだけでなにをするものかまったくわからなかった

	- まさかここまでお世話になるとは。。。（Vimのおかげでぎりぎり周りに追いつけてる）

---
layout: two-cols
---

# VScodeにいれてみよう

<br>

Ctrl + Shift + xで"vim"を検索して拡張機能をインストール

ただ、なにも打てない。。。

:: right ::

<style>
.content {
  max-width: 500px;
  margin: auto;
}
</style>

<body>

<div class="content">
<img src="https://raw.githubusercontent.com/VSCodeVim/Vim/master/images/icon.png" width="300" height="400" class="center">
</div>

</body>

---
layout: default
---

ノーマルモード編

|キー|動作|
|---|---|
|i|インサートモードに入る|
|h|左へカーソルを移動|
|j|下へカーソルを移動|
|k|上へカーソルを移動|
|l|右へカーソルを移動|
|ci"|""の中身を消してインサートモードに入る|
|A|行末に移動してインサートモードに入る|

---

|||
|---|---|
|.|一つ前の動作を繰り返す|
|u|undo|
|\<CTRL\>r|redo|
|dd|行の削除|
|o|一行下に移ってインサートモードに入る|
|yy|一行ヤンク（コピー）|
|p|ペースト|

超基本はこのくらい

まだ知らないものもあるくらい

---
layout: default
---

インサートモード編

|キー|動作|
|---|---|
|\<CTRL\>w|前の単語を削除|
|\<CTRL\>u|行頭まで削除|
|\<CTRL\>a|前回のインサートモードで書き込んだ内容を呼び出す|
|\<CTRL\>o|ノーマルモードで１回だけコマンドを実行して再度インサートモードに入る|
|\<CTRL\>d|インデントを減らす|
|\<CTRL\>t|インデントを増らす|
|\<ESC\>|ノーマルモードに戻る|

---
layout: default
---

コマンド編<br>
ノーマルモードで`:`を打つと入力できるようになる

|コマンド|動作|
|---|---|
|wq|保存して終了|
|q!|保存せずに終了|
|tabnew <ファイル>|タブで新しくファイルを開く|
|!<シェルコマンド>|lsとかが実行できる|

---
layout: default
---

# 最後に
<br>

- Vimはコマンドの組み合わせでいろいろな操作ができる

- すきなツールを使って`:smile`になろう

