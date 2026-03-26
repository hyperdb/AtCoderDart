/*
 * ABC-046 B - AtCoDeerくんとボール色塗り
 * https://atcoder.jp/contests/abc046/tasks/abc046_b
 */
import "dart:io";
import 'dart:math';

List<int> getIntList() {
  var line = stdin.readLineSync();
  return line == null ? [] : line.split(' ').map((e) => int.parse(e)).toList();
}

(int, int) getIntMap() {
  final List<int> n = getIntList();
  return (n[0], n[1]);
}

void main() {
  final (N, K) = getIntMap();

  // ボールが1個のときは、K通りの塗り方がある
  if (N == 1) {
    print(K);
  } else {
    // ボールが複数の場合は、
    //　最初のボールはK通り、
    //　2個目以降のボールは前のボールと同じ色に塗れないため、(K - 1)通りの塗り方がある
    print((K * pow((K - 1), (N - 1))).toInt());
  }
}
