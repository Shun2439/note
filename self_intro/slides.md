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
defaults:
  foo: true
transition: slide-left
title: タイトル
mdc: true
monaco: true
monacoTypesSource: local # or cdn or none
---

# 最初のLT

<div class="abs-br m-6 flex gap-2">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="text-xl slidev-icon-btn opacity-50 !border-none !hover:text-white">
    <carbon:edit />
  </button>
  <a href="https://github.com/slidevjs/slidev" target="_blank" alt="GitHub" title="Open in GitHub"
    class="text-xl slidev-icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<!--
The last comment block of each slide will be treated as slide notes. It will be visible and editable in Presenter Mode along with the slide. [Read more in the docs](https://sli.dev/guide/syntax.html#notes)
-->

---
transition: fade-out
---

# 概要

- 3-2 IE系 情報コース
- 出身は小川村
- vimmerのなりそこない
- HNはShun2439（たまに\_shun2439）
- 寮に服役中
- 過疎なド田舎出身
- ゴミレポジェネレーター

<br>
<br>

<!--
You can have `style` tag in markdown to override the style for the current page.
Learn more: https://sli.dev/guide/syntax#embedded-styles
-->

<style>
h1 {
  background-color: #2B90B6;
  background-image: linear-gradient(45deg, #4EC5D4 10%, #146b8c 20%);
  background-size: 100%;
  -webkit-background-clip: text;
  -moz-background-clip: text;
  -webkit-text-fill-color: transparent;
  -moz-text-fill-color: transparent;
}
</style>

<!--
Here is another comment.
-->

---
layout: default
---

# 目次

<Toc maxDepth="1"></Toc>

---
transition: slide-up
---

# 好きなものとか
箇条書きはその一部
## 音楽
あくまでも聞く専

- unison square garden
- alexandros

皆さんはどうですか？

---
layout: image-right
image: https://source.unsplash.com/collection/94734566/1920x1080
---

## コンピューター関係
(**できるとはいってない！**)

### 黒い画面
~~vim~~の存在が大きいかな？意外となんでもできる。
- screen
- ~~vim~~
- git
- gdb
- bat
- screen

---
level: 2
---

### androidよりの開発
まだしっかりしたものは作れてない💦

- java
- flutter

---
class: px-20
---

### CTF
まったく強くない😭

### 竸プロ
まったく強くない😭

### その他
ウェブ系やゲーム制作とかもやってみたい(必修(？))

---
preload: false
---

## 外出
最近あまりできてない。テスト後はよくでかける。ついてきてもいいよ。
## 読書
最近あまりできてない。

---

# 春休みにしてたこと
## アルバイト
- スキー場に住みこみでリフトの係員

忙しかったためあまり人と話すことができなかった🥲
うん。ちょっとキツい。
- 地元のスポーツ施設で監視員

いつもどおり。たまに先輩にあえるのがうれしい。

**今年こそはパソコンを使う場所に行ってみたい！**

---

## 開発(？)
- nas with raspberry pi

家族にicl0udのヘビーユーザーがおり、app1eに貢ぐのがつらいとのことで作成にいたった。まだ途中。。。
- TJSSF

なにもできてない。ずっと資料読んでる。助けて~

---

## 来年度の準備
おもに黒い画面の資料作ってた。

---
layout: center
class: text-center
---

# 最後に
現在の情報技術研究部は昨年まで在籍していた主戦力を殆ど失ったので、皆さん、力を貸してください。

おねがします。

(これが自己紹介の最後になるほどヤバいかもということです)

