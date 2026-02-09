/*
 * ABC-042 B - 文字列大好きいろはちゃんイージー
 * https://atcoder.jp/contests/abc042/tasks/abc042_b
 */
import "dart:io";

(int, int) getIntMap() {
  var s = stdin.readLineSync();
  if (s == null) {
    return (0, 0);
  }
  var items = s.split(" ").map(int.parse).toList();
  return (items[0], items[1]);
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
