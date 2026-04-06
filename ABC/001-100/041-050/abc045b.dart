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

int playGame(int player, List<List<String>> draw) {
  // 手札が無くなったら終了
  if (draw[player].isEmpty) {
    print(playerNames[player]);
    return -1;
  }

  // 最初のカードをめくる->次のプレイヤーへ
  int score = switch (draw[player].removeAt(0)) {
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
  List<List<String>> draw = [
    getString().split(""),
    getString().split(""),
    getString().split(""),
  ];

  int player = 0;
  // 初期プレイヤーを0(A)とし、手札が無くなるまでゲームを続ける
  while (player >= 0) {
    player = playGame(player, draw);
  }
}
