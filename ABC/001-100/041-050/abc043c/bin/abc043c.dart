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

  if (N > 0) {
    final List<int> data = getIntList();
    final int sum = data.reduce((value, element) => value + element);
    final double ave = sum / data.length;
    if (ave % 1.0 > 0.0) {
      final int c1 = getCost(data, ave.floor());
      final int c2 = getCost(data, ave.ceil());
      print(c1 < c2 ? c1 : c2);
    } else {
      final int c = getCost(data, ave.toInt());
      print(c);
    }
  } else {
    print(0);
  }
}
