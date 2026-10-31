# fixlang-cp-snippets

プログラミング言語 Fix で競技プログラミングをするときに、提出するソースへコピーして使うコード片の集まりです。ジャッジに入っているライブラリ（[cp-library](https://github.com/tttmmmyyyy/cp-library) など）に無いものを置きます。

## 使い方

コード片は、1 つずつ貼れる単位ごとに、`Snippets` の下の 1 つのモジュール（ファイル）になっています。`Snippets/Pell.fix` なら `module Snippets.Pell;` です。

- 中身は、モジュールと同じ名前の名前空間で包んであります（`Snippets/Pell.fix` なら `namespace Pell { ... }`）。貼るのは、`namespace` の行からファイルの終わりまでです。貼った後も、名前空間 `Pell` から後ろの名前は変わらないので、`Pell::calc_pell_fundamental_solution` のような参照も、貼る前と同じように通ります。
- 中の関数は、名前空間を書かずに呼べます（`calc_sqrts_mod(m, a)` など）。
- `import Snippets.X;` の行は、モジュール `X` を使うことを表します。`X` も一緒に貼り、`import Snippets.X;` の行は貼りません。それ以外の `import` の行は、`main.fix` の先頭に書いておきます。

AtCoder の ABC・ARC・AGC では、生成 AI で作ったコードをコピーして使うときに、参照 URL を提出に書く必要があります（[AtCoder生成AI対策ルール](https://info.atcoder.jp/entry/llm-rules-ja)）。このリポジトリのコードには生成 AI で作ったものが含まれるので、貼るときは次の行も一緒に書いてください。

```
// https://github.com/tttmmmyyyy/fixlang-cp-snippets
```

## テスト

```sh
fix test
```
