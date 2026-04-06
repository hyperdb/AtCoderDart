/*
 * ABC-043 A - キャンディーとN人の子供イージー
 * https://atcoder.jp/contests/abc043/tasks/abc043_a
 */
import "dart:io";

int getInt() {
  return int.parse(stdin.readLineSync()!);
}

/*
 * メイン処理
 */
void main() {
  final int N = getInt();
  // 等差数列の和の公式を利用
  print((N + 1) * N ~/ 2);
}
