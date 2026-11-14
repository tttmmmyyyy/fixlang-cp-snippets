# fixlang-cp-snippets

プログラミング言語 Fix で競技プログラミングをするときに、提出するソースへコピーして使うスニペット集です。

個人的なものですが、生成AIで作成あるいは改善されたコードを含むため、（[AtCoder生成AI対策ルール](https://info.atcoder.jp/entry/llm-rules-ja)）に従うために公開しているものです。

また、スニペットを貼り付けるツール `snip` もこのリポジトリに含まれます。
このツールを使って貼り付けると、AtCoder生成AIルールに従い、本リポジトリへのURLも書き込まれます。

### `snip` ツール

`tool` に、スニペットを貼るツール `snip` があります。以下のコマンドでビルド・インストールします。スニペットのソースはバイナリに埋め込まれます。

```sh
cd tool
fix build -O max -o snip
cp snip ~/.local/bin/
```

使い方：

```sh
snip Pell                # main.fix に Pell と、Pell が使う Integer、SqrtMod を貼る
snip -f other.fix Pell   # 貼り先のファイルを指定する
snip revert              # main.fix を最新のバックアップ (main.fix.snip-backup.<番号>) の中身に戻す
snip revert --force      # snip が最後に書いた後に main.fix を編集していても戻す
snip --list              # コード片の一覧
```

`snip` は `main.fix` の中身を消しません。書き換える前の中身を、`main.fix.snip-backup.001` から順に番号を振ったファイルに残します。`revert` も、戻す前の中身をバックアップに取るので、続けて `revert` すると前の `revert` を取り消します。

## スニペットの構成

`snip` が正しくスニペットを認識するようにするため、以下のようにスニペットを構成します。

- スニペットは、単位ごとに、`Snippets` 以下の 1 つのモジュール（ファイル）にします。`Snippets/Pell.fix` なら `module Snippets.Pell;` です。
- 中身は、名前空間で囲まずに書きます。`snip` は、`module` と `import` の行より後ろを、モジュールと同じ名前の名前空間（`Snippets/Pell.fix` なら `namespace Pell { ... }`）で囲んで貼ります。これにより、`Pell::calc_pell_fundamental_solution` のような参照は、貼り付け後のコード中でも（多くの場合は）問題なく解決できます。
- `import Snippets.X;` の行は、他のスニペット `X` に依存することを `snip` に伝えます。

## テスト

```
fix test
```
