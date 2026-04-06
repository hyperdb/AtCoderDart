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
  final int num = getInt();
  // 等差数列の和の公式を利用
  print((num + 1) * num ~/ 2);
}
