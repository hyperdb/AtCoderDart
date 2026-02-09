/*
 * ABC-043 A - キャンディーとN人の子供イージー
 * https://atcoder.jp/contests/abc043/tasks/abc043_a
 */
import "dart:io";

int getInt() {
  final String? i = stdin.readLineSync();
  return i == null ? -1 : int.parse(i);
}

/*
 * メイン処理
 */
void main() {
  final int N = getInt();

  print((N + 1) * N ~/ 2);
}
