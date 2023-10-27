---
title: "Gitの秘密鍵を渡された時の設定ノート"
emoji: "🌊"
type: "tech"
topics:
  - "git"
published: true
published_at: "2023-04-16 06:40"
---

初めてなので間違っていたら教えてください！

ちなみに環境はwindows11（2023/04/16/時点の最新）です ~~（mac book使いたい🤑）~~ 。

## Gitをインストール
省略させていただきます。

設定ではコマンドラインを使います ~~（怖い）~~ 。

## Git Bashを使う
🪟をおして、gitと検索。

Git bashを起動します。

## 作業するディレクトリを作る
好きな場所で

`mkdir <作業するディレクトリ>`

クローンすると`/<作業するディレクトリ>/<RepositoryName>/`のようになります（分けてあったほうが便利？）。

## 秘密鍵の登録

1. Bashにて`eval "$(ssh-agent -s)"`と打ち込み、ssh-agentを開始します。

1. 予め、もらった秘密鍵を`/c/Users/<windowsのユーザー名>/.ssh/`の下に保存しておきます。
    :::details 友人へ

    このとき名前がopensshのほうを使う。

    :::

1. `ssh-add /c/Users/<windowsのユーザー名>/.ssh/<秘密鍵>`で秘密鍵を追加します。
1. ユーザーの登録

    Gitをインストールした場所（多分programfileらへん）で`/Git/etc/ssh/`に移動します。

    `code ./ssh_config`で設定します ~~（vimを使いたい）~~ 。

    少しわかりずらいのですが、`<SrverName>`には`<RepositoryName>`を含めないようにしてください。
    ```
    Host <ServerName>
        User git
        HostName <ServerName> 
        IdentityFile /c/Users/<windowsのユーザー名>/.ssh/<さっき使った秘密鍵>
        IdentitiesOnly yes
    ```
    を追加して保存して閉じます。

## 作業ディレクトリに戻ってクローン
`git clone git+ssh://<UserName>@<ServerName>/<RepositoryName>`

`dir`で確認してみます。

```
2023/04/16  05:10    <DIR>          .
2023/04/15  05:26    <DIR>          ..
2023/04/16  05:11    <DIR>          <RepositoryName>
               0 File(s)              0 bytes
               3 Dir(s)  272,542,224,384 bytes fre
```
おつかれさまでした。