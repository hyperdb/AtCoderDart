/*
 * ABC-043 C - いっしょ
 * https://atcoder.jp/contests/abc043/tasks/arc059_a
 */
import "dart:io";

int getInt() {
  return int.parse(stdin.readLineSync()!);
}

List<int> getIntList() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}

/*
 * コスト計算
 */
int getCost(List<int> data, int n) {
  int cost = 0;
  for (var d in data) {
    var diff = d - n;
    cost += (diff * diff);
  }
  return cost;
}

/*
 * メイン処理
 */
void main() {
  final int N = getInt();

  // データ数が0より大きい場合のみ処理
  if (N > 0) {
    final List<int> data = getIntList();
    // 平均値を計算
    final int sum = data.reduce((value, element) => value + element);
    final double average = sum / data.length;
    // 平均値が整数でない場合、切り上げと切り捨ての両方を試す
    if (average % 1.0 > 0.0) {
      final int c1 = getCost(data, average.floor());
      final int c2 = getCost(data, average.ceil());
      print(c1 < c2 ? c1 : c2);
    } else {
      // 平均値が整数の場合、そのまま出力
      final int c = getCost(data, average.toInt());
      print(c);
    }
  } else {
    // データ数が0の場合、0を出力
    print(0);
  }
}
