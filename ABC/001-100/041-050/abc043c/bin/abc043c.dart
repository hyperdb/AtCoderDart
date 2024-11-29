import "dart:io";

int getInt() {
  var i = stdin.readLineSync();
  return i == null ? -1 : int.parse(i);
}

List<int> getIntList() {
  var s = stdin.readLineSync();
  return s == null ? [] : s.split(" ").map(int.parse).toList();
}

int getCost(List<int> data, int n) {
  int cost = 0;
  for (var d in data) {
    var diff = d - n;
    cost += (diff * diff);
  }
  return cost;
}

void main() {
  var p = getInt();

  if (p > 0) {
    var data = getIntList();
    var sum = data.reduce((value, element) => value + element);
    var ave = sum / data.length;
    if (ave % 1.0 > 0.0) {
      var c1 = getCost(data, ave.floor());
      var c2 = getCost(data, ave.ceil());
      print(c1 < c2 ? c1 : c2);
    } else {
      var c = getCost(data, ave.toInt());
      print(c);
    }
  } else {
    print(0);
  }
}
