/*
 * ABC-044 B - 美しい文字列
 * https://atcoder.jp/contests/abc044/tasks/abc044_b
 */
import "dart:io";

String getString() {
  return stdin.readLineSync()!;
}

/*
 * メイン処理
 */
void main() {
  final s = getString();
  Map<String, int> counter = {};

  for (var char in s.split('')) {
    counter[char] = (counter[char] ?? 0) + 1;
  }

  counter.forEach((key, value) {
    if (value % 2 != 0) {
      print("No");
      exit(0);
    }
  });
  print("Yes");
}
