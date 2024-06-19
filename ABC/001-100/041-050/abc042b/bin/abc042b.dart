import "dart:io";

List<int> getIntList() {
  var s = stdin.readLineSync();
  return s == null ? [] : s.split(" ").map(int.parse).toList();
}

List<String> getStringRow(N) {
  return List.generate(N, (_) => stdin.readLineSync() ?? '');
}

void main() {
  List nk = getIntList();
  List str = getStringRow(nk[0]);

  str.sort((a, b) => a.compareTo(b));

  print(str.join(""));
}
