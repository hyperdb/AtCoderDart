/*
 * ABC-042 A - 和風いろはちゃんイージー
 * https://atcoder.jp/contests/abc042/tasks/abc042_a
 */
import "dart:io";

List<int> getIntList() {
  final String? s = stdin.readLineSync();
  return s == null ? [] : s.split(" ").map(int.parse).toList();
}

/*
 * リスト比較
 */
bool compareList(List<int> src, List<int> dest) {
  for (int i = 0; i < src.length; i++) {
    if (src[i] != dest[i]) {
      return false;
    }
  }
  return true;
}

/*
 * メイン処理
 */
void main() {
  final List<int> abc = getIntList();

  abc.sort((a, b) => a.compareTo(b));

  print(compareList(abc, <int>[5, 5, 7]) ? 'YES' : 'NO');
}
