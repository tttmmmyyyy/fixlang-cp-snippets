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
snip revert              # 最後に貼る前の main.fix に戻す (貼る前の中身は main.fix.snip-backup にある)
snip --list              # コード片の一覧
```

## スニペットの構成

`snip` が正しくスニペットを認識するようにするため、以下のようにスニペットを構成します。

- スニペットは、単位ごとに、`Snippets` 以下の 1 つのモジュール（ファイル）にします。`Snippets/Pell.fix` なら `module Snippets.Pell;` です。
- 中身は、モジュールと同じ名前の名前空間に入れます（`Snippets/Pell.fix` なら `namespace Pell { ... }`）。貼るのは、`namespace` の行からファイルの終わりまでです。これにより、`Pell::calc_pell_fundamental_solution` のような参照は、貼り付け後のコード中でも（多くの場合は）問題なく解決できます。
- `import Snippets.X;` の行は、他のスニペット `X` に依存することを `snip` に伝えます。

## テスト

```
fix test
```
