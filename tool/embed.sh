#!/bin/sh
# ../Snippets/*.fix を、モジュール名とソースの組の配列 `snippet_sources` として sources.fix に書く。
# snip のビルドの前に、fixproj.toml の preliminary_commands から走る。
set -eu
cd "$(dirname "$0")"
{
    printf '// embed.sh が ../Snippets/*.fix から作るファイル。手で編集しない。\n'
    printf 'module Snip.Sources;\n\n'
    printf '// コード片のモジュールの名前 (`Snippets.` を除いたもの) と、そのソース。\n'
    printf 'snippet_sources : Array (String, String);\n'
    printf 'snippet_sources = [\n'
    for f in ../Snippets/*.fix; do
        name=$(basename "$f" .fix)
        printf '    ("%s", "' "$name"
        sed -e 's/\\/\\\\/g' -e 's/"/\\"/g' -e 's/$/\\n/' "$f" | tr -d '\n'
        printf '"),\n'
    done
    printf '];\n'
} > sources.fix.tmp
mv sources.fix.tmp sources.fix
