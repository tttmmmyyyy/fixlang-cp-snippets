# fixlang-cp-snippets

プログラミング言語 Fix で競技プログラミングをするときに、提出するソースへコピーして使うコード片の集まりです。ジャッジに入っているライブラリ（[cp-library](https://github.com/tttmmmyyyy/cp-library) など）に無いものを置きます。

## 使い方

`snippets.fix` から、使う節をコピーして解答の `main.fix` に貼ります。

- `snippets.fix` は、`// ==================== 節の名前 ====================` の行で節に分かれています。節の先頭に「使うもの：」の行があれば、そこに書かれた節も一緒に貼ります。
- 定義は [cp-library](https://github.com/tttmmmyyyy/cp-library) の関数を使います。`main.fix` には、`snippets.fix` の先頭と同じ `import` の行を書いておきます。

AtCoder の ABC・ARC・AGC では、生成 AI で作ったコードをコピーして使うときに、参照 URL を提出に書く必要があります（[AtCoder生成AI対策ルール](https://info.atcoder.jp/entry/llm-rules-ja)）。このリポジトリのコードには生成 AI で作ったものが含まれるので、貼るときは次の行も一緒に書いてください。

```
// https://github.com/tttmmmyyyy/fixlang-cp-snippets
```

## テスト

```sh
fix test
```
