# AtCoder for Dart

- AtCoderのdartのバージョン: `3.0.5`

## プロジェクト作成

`workspace/atcoder`で解答を作成するように変更しました。
解答を`bin/atcoder.dart`を保存場所にリネームして移動します。
ファイル移動用のバッチファイル`mv.bat`の移動先を書き換えて実行すれば問題ありません。

## テスト

```bash
dart run
```

データを投入する場合は以下のようにします。

```bash
dart run < in.txt
```

## ライブラリ

```text
advance_math =
bit_array =
collection =
decimal =
fast_immutable_collections =
min_max_heap =
more =
ordered_set =
scidart =
segment_tree =
sorted_list =
sortedmap =
z3 =
```
