import "dart:io";

List<int> getIntList() {
  var s = stdin.readLineSync();
  return s == null ? [] : s.split(" ").map(int.parse).toList();
}

bool compareList(List<int> src, List<int> dest) {
  for (int i = 0; i < src.length; i++) {
    if (src[i] != dest[i]) {
      return false;
    }
  }
  return true;
}

void main() {
  List<int> abc = getIntList();

  abc.sort((a, b) => a.compareTo(b));

  print(compareList(abc, <int>[5, 5, 7]) ? 'YES' : 'NO');
}
