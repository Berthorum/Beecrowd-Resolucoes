import 'dart:io';

void main() {
  int? value = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= value; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}
