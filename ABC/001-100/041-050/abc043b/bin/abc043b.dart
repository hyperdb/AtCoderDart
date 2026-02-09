/*
 * ABC-043 B - バイナリハックイージー
 * https://atcoder.jp/contests/abc043/tasks/abc043_b 
 */
import "dart:io";

String getString() {
  return stdin.readLineSync() ?? "";
}

/*
 * メイン処理
 */
void main() {
  final String S = getString();

  final List<String> buf = [];
  S.split('').forEach((c) {
    if (c == 'B') {
      if (buf.isNotEmpty) {
        buf.removeLast();
      }
    } else {
      buf.add(c);
    }
  });
  print(buf.join(''));
}
