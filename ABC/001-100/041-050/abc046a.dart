/*
 * ABC-046 A - AtCoDeerくんとペンキ
 * https://atcoder.jp/contests/abc046/tasks/abc046_a
 */
import "dart:io";

List<int> getIntList() {
  var line = stdin.readLineSync();
  return line == null ? [] : line.split(' ').map((e) => int.parse(e)).toList();
}

void main() {
  final List<int> listColor = getIntList();
  // 重複を削除して、残った要素数を出力
  print(listColor.toSet().toList().length);
}
