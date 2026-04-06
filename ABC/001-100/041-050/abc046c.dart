/*
 * ABC-046 C - AtCoDeerくんと選挙速報
 * https://atcoder.jp/contests/abc046/tasks/arc062_a
 */
import "dart:io";

int getInt() {
  var i = stdin.readLineSync();
  return i == null ? -1 : int.parse(i);
}

List<List<int>> getIntListRows(int n) {
  List<List<int>> list = [];
  for (int i = 0; i < n; i++) {
    var line = stdin.readLineSync();
    if (line != null) {
      list.add(line.split(' ').map((e) => int.parse(e)).toList());
    }
  }
  return list;
}

// maxの整数用を定義
int intMax(int a, int b) {
  return a > b ? a : b;
}

void main(List<String> arguments) {
  int num = getInt();
  List<List<int>> voteTakAoki = getIntListRows(num);

  // 最初は、両者とも1票ずつ持っていると仮定する
  int votesTak = 1;
  int votesAoki = 1;

  // 各投票の結果を順番に処理する
  for (int i = 0; i < num; i++) {
    int tak = voteTakAoki[i][0];
    int aoki = voteTakAoki[i][1];

    // 投票の結果に基づいて、両者の票数を更新する
    int x = (votesTak + tak - 1) ~/ tak;
    int y = (votesAoki + aoki - 1) ~/ aoki;

    votesTak = tak * intMax(x, y);
    votesAoki = aoki * intMax(x, y);
  }

  print(votesTak + votesAoki);
}
