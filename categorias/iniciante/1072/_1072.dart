import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  List<int> values = [];
  int inRange = 0;

  for (int i = 0; i < n; i++) {
    int value = int.parse(stdin.readLineSync()!);
    values.add(value);
  }

  for (int element in values) {
    if (element >= 10 && element <= 20) {
      inRange++;
    }
  }

  print("$inRange in");
  print("${values.length - inRange} out");
}
