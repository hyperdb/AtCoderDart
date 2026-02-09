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
  var (N, A) = getIntMap();
  var x = getIntList();

  List<int> base = List.generate(N + 1, (index) => 0);
  List<List<List<int>>> dp = List.generate(
    N + 1,
    (index) => List.generate(N * 50 + 1, (index) => base.toList()),
  );

  dp[0][0][0] = 1;

  for (var i = 0; i < N; i++) {
    for (var j = 0; j <= x.reduce((a, b) => a + b); j++) {
      for (var k = 0; k <= N; k++) {
        if (dp[i][j][k] == 0) continue;

        dp[i + 1][j][k] += dp[i][j][k];
        dp[i + 1][j + x[i]][k + 1] += dp[i][j][k];
      }
    }
  }

  int result = 0;
  for (var k = 1; k <= N; k++) {
    result += dp[N][A * k][k];
  }
  print(result);
}
