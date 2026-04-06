/*
 * ABC-042 A - 和風いろはちゃんイージー
 * https://atcoder.jp/contests/abc042/tasks/abc042_a
 */
import "dart:io";

List<int> getIntList() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}

/*
 * リスト比較
 */
bool compareIntList(List<int> src, List<int> dest) {
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

  abc.sort();

  print(compareIntList(abc, <int>[5, 5, 7]) ? 'YES' : 'NO');
}
