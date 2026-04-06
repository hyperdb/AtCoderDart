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
  // バッファを一文字ずつ処理
  S.split('').forEach((c) {
    // 'B'ならバッファの最後の文字を削除
    if (c == 'B') {
      if (buf.isNotEmpty) {
        buf.removeLast();
      }
    } else {
      // それ以外なら追加
      buf.add(c);
    }
  });
  print(buf.join(''));
}
