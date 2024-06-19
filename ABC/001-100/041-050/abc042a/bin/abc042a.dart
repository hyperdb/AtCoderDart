import "dart:io";
import 'package:collection/collection.dart';

List<int> getIntList() {
  var s = stdin.readLineSync();
  return s == null ? [] : s.split(" ").map(int.parse).toList();
}

void main() {
  List abc = getIntList();

  abc.sort((a, b) => a.compareTo(b));

  print(abc.equals([5, 5, 7]) ? 'YES' : 'NO');
}
