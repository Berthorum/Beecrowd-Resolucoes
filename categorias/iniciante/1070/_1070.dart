import 'dart:io';

void main() {
  int value = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 6;) {
    if (value % 2 != 0) {
      print(value);
      i++;
    }
    value++;
  }
}
