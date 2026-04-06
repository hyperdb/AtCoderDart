/*
 * ABC-044 C - 高橋君とカード
 * https://atcoder.jp/contests/abc044/tasks/arc060_a
 */
import "dart:io";

List<int> getIntList() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}

(int, int) getIntMap() {
  var list = getIntList();
  return (list[0], list[1]);
}

/*
 * メイン処理
 */
void main() {
  var (num, average) = getIntMap();
  var cards = getIntList();

  List<int> base = List.generate(num + 1, (index) => 0);
  List<List<List<int>>> dp = List.generate(
    num + 1,
    (index) => List.generate(num * 50 + 1, (index) => base.toList()),
  );

  // 初期状態
  dp[0][0][0] = 1;

  // DP(動的計画法)
  // i: カードの枚数(何番目のカードか), j: カードの合計値, k: 選んだカードの枚数
  for (var i = 0; i < num; i++) {
    for (var j = 0; j <= cards.reduce((a, b) => a + b); j++) {
      for (var k = 0; k <= num; k++) {
        if (dp[i][j][k] == 0) continue;

        dp[i + 1][j][k] += dp[i][j][k];
        dp[i + 1][j + cards[i]][k + 1] += dp[i][j][k];
      }
    }
  }

  int result = 0;
  // カードの枚数が1枚以上num枚以下で、合計値がaverage*kのものを数える
  // 平均がaverage → 合計はaverage*k (kは選んだカードの枚数) となるため
  for (var k = 1; k <= num; k++) {
    result += dp[num][average * k][k];
  }
  // 結果を出力
  print(result);
}
