/*
 * ABC-044 A - 高橋君とホテルイージー
 * https://atcoder.jp/contests/abc044/tasks/abc044_a
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
  final int K = getInt();
  final int X = getInt();
  final int Y = getInt();
  // 泊数がK未満の場合とそれ以外で場合分け
  print(N < K ? N * X : K * X + (N - K) * Y);
}
