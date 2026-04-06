/*
 * ABC-042 B - 文字列大好きいろはちゃんイージー
 * https://atcoder.jp/contests/abc042/tasks/abc042_b
 */
import "dart:io";

List<int> getIntList() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}

(int, int) getIntMap() {
  final List<int> n = getIntList();
  return (n[0], n[1]);
}

List<String> getStringRow(int N) {
  return List.generate(N, (_) => stdin.readLineSync() ?? '');
}

/*
 * メイン処理
 */
void main() {
  final (N, K) = getIntMap();
  List<String> str = getStringRow(N);

  str.sort((a, b) => a.compareTo(b));

  print(str.join(""));
}
