/*
 * ABC-045 B - 3人でカードゲームイージー
 * https://atcoder.jp/contests/abc045/tasks/abc045_b
 */
import "dart:io";

String getString() {
  var s = stdin.readLineSync();
  return s ?? "";
}

final List<String> playerNames = ['A', 'B', 'C'];

int playGame(int p, List<List<String>> d) {
  // 手札が無くなったら終了
  if (d[p].isEmpty) {
    print(playerNames[p]);
    return -1;
  }

  // 最初のカードをめくる->次のプレイヤーへ
  int score = switch (d[p].removeAt(0)) {
    "a" => 0,
    "b" => 1,
    "c" => 2,
    _ => -1, // 念のため
  };

  if (score == -1) {
    print("parameter error");
  }

  return score;
}

/*
 * メイン関数
 */
void main() {
  List<List<String>> d = [
    getString().split(""),
    getString().split(""),
    getString().split(""),
  ];

  int p = 0;
  while (p >= 0) {
    p = playGame(p, d);
  }
}
