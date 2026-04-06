/*
 * ABC-045 C - たくさんの数式
 * https://atcoder.jp/contests/abc045/tasks/abc045_c
 */
import "dart:io";

String getString() {
  final String? s = stdin.readLineSync();
  return s ?? "";
}

/*
 * Thanks to:
 * Dartで順列組み合わせ #Flutter - Qiita
 * https://qiita.com/kamekame85/items/daa4f9f96d0136f0803c
 */

/*
 * 順列
 */
List<List<int>> permutation(List<int> list, int n) {
  return n == 1
      ? list.map((el) => [el]).toList()
      : list.asMap().entries.expand((entry) {
          return permutation(
            list.sublist(0, entry.key) + list.sublist(entry.key + 1),
            n - 1,
          ).map((el) => [entry.value] + el).toList();
        }).toList();
}

/*
 * 組み合わせ
 */
List<List<int>> combination(List<int> list, int n) {
  return n == 1
      ? list.map((el) => [el]).toList()
      : list.asMap().entries.expand((entry) {
          return combination(
            list.sublist(entry.key + 1),
            n - 1,
          ).map((el) => [entry.value] + el).toList();
        }).toList();
}

/*
 * メイン処理
 */
void main() {
  // 受け取ったパラメータを一文字ずつ分割してリスト化
  final List<String> S = getString().split("");
  // `+`の位置の候補リスト
  final List<int> T = List.generate(S.length - 1, (index) => index);

  // 合計値
  int sum = 0;
  // `+`の個数を増やしていく
  for (int i = 0; i < T.length; i++) {
    // `+`を入れる位置の組み合わせを全探索
    for (final List<int> c in combination(T, i + 1)) {
      int n = 0;
      for (int j = 0; j < S.length; j++) {
        // 一文字ずつ桁を繰り上げ
        n = n * 10 + int.parse(S[j]);
        // `+`なら合計値に加算して桁をリセット
        if (c.contains(j)) {
          sum += n;
          n = 0;
        }
      }
      sum += n;
    }
  }
  // `+`を一つも入れない場合
  sum += int.parse(S.join());
  print(sum);
}
