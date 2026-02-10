/*
 * ABC-045 A - 台形
 * https://atcoder.jp/contests/abc045/tasks/abc045_a
 */
import "dart:io";

int getInt() {
  var i = stdin.readLineSync();
  return i == null ? -1 : int.parse(i);
}

/*
 * メイン関数
 */
void main() {
  final int X = getInt();
  final int Y = getInt();
  final int H = getInt();
  // 台形の面積 = (上底 + 下底) × 高さ ÷ 2
  print(((X + Y) * H / 2).toInt());
}
