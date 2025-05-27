---
title: "Gitの秘密鍵を渡された時の設定ノート"
emoji: "🌊"
type: "tech"
topics:
  - "git"
published: false
published_at: "2023-04-16 06:40"
---

環境はWindows11（2023/04/16/時点の最新）です。

設定ではコマンドラインを使います。

## Git Bashを開く

🪟キーを押して、gitと検索。

Git Bashを起動します。

## 秘密鍵の登録

1. Bashにて`eval "$(ssh-agent -s)"`と打ち込み、ssh-agentを開始します。

1. 予め、もらった秘密鍵を`/c/Users/<windowsのユーザー名>/.ssh/`の下に保存しておきます。

    :::details 友人へ

    このときファイル名にopensshが付いたほうを使う。

    :::

1. ユーザーの登録

    Gitをインストールした場所（多分programfileあたり）で`/Git/etc/ssh/`に移動します。

    `code -n ./ssh_config`などでエディタを開き、以下のような設定をファイルの末尾に追加します。

    少しわかりずらいのですが、`<SrverName>`には`<RepositoryName>`を含めないようにしてください。

    ```txt:ssh_config(一部)
    Host <ServerName>
        User git
        HostName <ServerName> 
        IdentityFile /c/Users/<windowsのユーザー名>/.ssh/<さっき使った秘密鍵>
        IdentitiesOnly yes
    ```

    追加できたら保存して閉じます。

## 作業ディレクトリに戻ってクローン

以下のコマンドでクローンします。

`git clone git+ssh://<UserName>@<ServerName>/<RepositoryName>`

`dir`で確認してみます。

```
2023/04/16  05:10    <DIR>          .
2023/04/15  05:26    <DIR>          ..
2023/04/16  05:11    <DIR>          <RepositoryName>
               0 File(s)              0 bytes
               3 Dir(s)  272,542,224,384 bytes free
```

もしここで、`<key> are too open`のような警告が出てクローンができない場合は以下のようなコマンドで権限を制限してください。

```shell
chmod 600 <key>
```

おつかれさまでした。

## ref

<https://stackoverflow.com/a/9270753/20348296>

