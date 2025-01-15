import 'dart:io';

void main() {
  int n;
  List<int> values = [];
  int largest, index;

  for (int i = 0; i < 100; i++) {
    n = int.parse(stdin.readLineSync()!);
    values.add(n);
  }

  largest = values[0];
  index = 0;

  for (int i = 1; i < values.length; i++) {
    if (largest < values[i]) {
      largest = values[i];
      index = i;
    }
  }

  print(largest);
  print(index + 1);
}
