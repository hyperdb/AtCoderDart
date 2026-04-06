/*
 * ABC-042 C - こだわり者いろはちゃん
 * https://atcoder.jp/contests/abc042/tasks/arc058_a
 */

import "dart:io";

List<int> getIntList() {
  final String? s = stdin.readLineSync();
  return s == null ? [] : s.split(" ").map(int.parse).toList();
}

(int, int) getIntMap() {
  final String? s = stdin.readLineSync();
  if (s == null) {
    return (0, 0);
  }
  final List<int> items = s.split(" ").map(int.parse).toList();
  return (items[0], items[1]);
}

/*
 * メイン処理
 */
void main() {
  final (price, unlike) = getIntMap();
  final List<int> d = getIntList();

  // price以上の金額を順にチェック
  for (int i = price; i < 100000; i++) {
    int paidPrice = i;
    bool result = true;
    // 桁ごとに嫌いな数字リストに含まれないかチェック
    while (paidPrice > 0) {
      int digit = paidPrice % 10;
      if (d.contains(digit)) {
        result = false;
        break;
      }
      paidPrice = paidPrice ~/ 10;
    }
    // 好きな数字だけで構成されている場合は出力して終了
    if (result) {
      print(i);
      break;
    }
  }
}
