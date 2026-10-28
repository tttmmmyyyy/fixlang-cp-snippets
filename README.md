# fixlang-cp-snippets

プログラミング言語 Fix で競技プログラミングをするときに、提出するソースへコピーして使うコード片の集まりです。ジャッジに入っているライブラリ（[cp-library](https://github.com/tttmmmyyyy/cp-library) など）に無いものを置きます。

## 使い方

`snippets.fix` から、使う定義をコピーして解答の `main.fix` に貼ります。`snippets.fix` の中の定義は、モジュールに分けずに並べてあるので、`module Snippets;` の行より後をそのまま貼れます。

AtCoder の ABC・ARC・AGC では、生成 AI で作ったコードをコピーして使うときに、参照 URL を提出に書く必要があります（[AtCoder生成AI対策ルール](https://info.atcoder.jp/entry/llm-rules-ja)）。このリポジトリのコードには生成 AI で作ったものが含まれるので、貼るときは次の行も一緒に書いてください。

```
// https://github.com/tttmmmyyyy/fixlang-cp-snippets
```

## テスト

```sh
fix test
```
