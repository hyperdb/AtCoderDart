/*
 * ABC-042 C - こだわり者いろはちゃん
 * https://atcoder.jp/contests/abc042/tasks/abc042_c
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
  final (N, K) = getIntMap();
  final List<int> d = getIntList();

  // N以上の金額を順にチェック
  for (int i = N; i < 100000; i++) {
    int price = i;
    bool result = true;
    // 桁ごとに嫌いな数字リストに含まれないかチェック
    while (price > 0) {
      int digit = price % 10;
      if (d.contains(digit)) {
        result = false;
        break;
      }
      price = price ~/ 10;
    }
    // 好きな数字だけで構成されている場合は出力して終了
    if (result) {
      print(i);
      break;
    }
  }
}
