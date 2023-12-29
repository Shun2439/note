# flutter for 🥚

これは少しプログラミングになれた１年生向けの資料です。

> note
>
> 作者も勉強中であるため改善等の提案をお願いします。

## why flutter?

※個人的な考え

- Dartの文法がCに似ている
    - C言語にすんなり（？）入れそう

- 一つの言語だけで何かを作ることができる

- クロスプラットフォーム
    - web
    - windows
    - android
      - 授業で使えそう
    - linux (+raspi)
    - macos[^1]
    - ios[^1]

全部やん

- 環境構築が楽
    - 快適な開発環境

- 即戦力なる🙇‍♂️

- 目に見えて**楽しい**

## プロジェクトの作成

今回はwebページだけのビルドにします

以下のコマンドを実行しましょう

```cmd
flutter create --platforms=web <プロジェクトの名前>
```
> note
> 
> <>は書かないでください。
> 
> 他の記事とかでもないものと思ってください。
> 
> プロジェクトの名前は英語にしてみましょう（推奨）
>
> これから一つのコードブロックに複数のコマンドを書くと思いますが、ひとつづつ実行しましょう。

次にエディタを開いていきます。

```cmd
cd <さっきのプロジェクトの名前>

code .
```
> note
> 
> `cd`はchange directoryの略です。
> 
> `.`は現在位置しているディレクトリを指しています。上のコマンドはこの場所でcode.exeを起動するということです。

これでエディタが開いたことを確認したら、フォルダを表示してみましょう。

ctrl + shift + eを押してみてください。左側になにか表示されましたか？これからlib内にあるmain.dartを編集していきます。

## Gitを使っていこう

Gitを簡単にいうと。。。

コードを管理しやすくしてくれるツール

例えば**バージョン管理**や**バックアップ**、**共有機能**などいろいろなことができるようになるものです。

早速使ってみましょう。

```cmd
git init

git add .

git commit -m ":tada:"

git branch -M main
```

> note
> 
> 今回のコミットメッセージはちょっとかっこよくしましたが、これからはどんな変更を加えたのかわかりやすくしていきましょう。後に見た時に一目でわかると効率がいいと思います。

### リモートリポジトリへあげる

いま行ってきたのは**ローカルリポジトリ**の操作です。ただ、これでは他の人共同で作業することが困難なので、リモートリポジトリという場所にコードをおいて共有してみましょう。

今回は**GitHub**を使ってみます。

GitHubは簡単に言うと、世界中の開発者が自分のコードを管理、共有するために作られたサービスで、今回使用しているVSCもここで開発されています。正直、これが無料なのはおかしいです。

ではまず、使用するためのアカウントを作成しましょう。

> note
> 
> ここからは別の資料を参照してください

## プロジェクトのビルド

リモートリポジトリへコードを上げ終わったら早速アプリケーションを見ていきましょう。

ビルドするにはF5キーを押してください。ブラウザが立ち上がってなにか表示されればビルド成功です。🎉

これで、以降プロジェクトに変更を加えると自動で反映してくれるようになり、効率的に開発できます。

ではディフォルトのソースコードを読み解いていきましょう。コメントで説明します。

```dart
import 'package:flutter/material.dart';//アプリケーションで使う部品を読み込みます。これで簡単にボタンとかを作成できるようになります。インポートとかインクルードと言われています。

void main() {//ここがエントリーポイントのmain関数です。プログラムのはじまりです！プログラムではこのような関数を次々に呼び出すことで様々な処理を行っていきます。
  runApp(const MyApp());//ここでもまた関数を読んでいます。名前の通りなにかを実行している様子です。
}

class MyApp extends StatelessWidget {//これが先ほどのrunAppで呼び出されていたもののようです。classというキーワードがあります。
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```

[^1]:Macが必要😿

## 参考とかリンク

- https://flutterstudio.app/