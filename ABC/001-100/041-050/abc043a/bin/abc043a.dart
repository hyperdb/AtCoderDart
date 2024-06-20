import "dart:io";

int getInt() {
  var i = stdin.readLineSync();
  return i == null ? -1 : int.parse(i);
}

void main() {
  int N = getInt();

  print((N + 1) * N ~/ 2);
}
