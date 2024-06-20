import "dart:io";

List<int> getIntList() {
  var s = stdin.readLineSync();
  return s == null ? [] : s.split(" ").map(int.parse).toList();
}

void main() {
  List nk = getIntList();
  List d = getIntList();

  for (int i = nk[0]; i < 100000; i++) {
    int p = i;
    bool f = true;
    while (p > 0) {
      int m = p % 10;
      if (d.contains(m)) {
        f = false;
        break;
      }
      p = p ~/ 10;
    }
    if (f) {
      print(i);
      break;
    }
  }
}
