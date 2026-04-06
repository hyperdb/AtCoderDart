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
  final int stay = getInt();
  final int change = getInt();
  final int priceX = getInt();
  final int priceY = getInt();
  // 泊数がchange未満の場合とそれ以外で場合分け
  print(
    stay < change ? stay * priceX : change * priceX + (stay - change) * priceY,
  );
}
