import "dart:io";

String getString() {
  return stdin.readLineSync() ?? "";
}

void main() {
  String S = getString();

  List<String> buf = [];
  S.split('').forEach((c) {
    if (c == 'B') {
      if (buf.isNotEmpty) {
        buf.removeLast();
      }
    } else {
      buf.add(c);
    }
  });
  print(buf.join(''));
}
