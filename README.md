# fixlang-cp-snippets

プログラミング言語 Fix で競技プログラミングをするときに、提出するソースへコピーして使うコード片の集まりです。ジャッジに入っているライブラリ（[cp-library](https://github.com/tttmmmyyyy/cp-library) など）に無いものを置きます。

## 使い方

`snippets.fix` から、使う名前空間をコピーして解答の `main.fix` に貼ります。

- `snippets.fix` は、1 つずつ貼れる単位ごとに `namespace` で分かれています。貼るのは、`namespace` の行から、それを閉じる `}` までです。
- 名前空間の先頭のコメントに `Include also:` の行があれば、そこに書かれた名前空間も一緒に貼ります。
- 中の関数は、名前空間を書かずに呼べます（`calc_sqrts_mod(m, a)` など）。
- 定義は [cp-library](https://github.com/tttmmmyyyy/cp-library) の関数を使います。`main.fix` には、`snippets.fix` の先頭と同じ `import` の行を書いておきます。

AtCoder の ABC・ARC・AGC では、生成 AI で作ったコードをコピーして使うときに、参照 URL を提出に書く必要があります（[AtCoder生成AI対策ルール](https://info.atcoder.jp/entry/llm-rules-ja)）。このリポジトリのコードには生成 AI で作ったものが含まれるので、貼るときは次の行も一緒に書いてください。

```
// https://github.com/tttmmmyyyy/fixlang-cp-snippets
```

## テスト

```sh
fix test
```
