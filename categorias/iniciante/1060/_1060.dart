import 'dart:io';

void main() {
  List<num> numbers = [];
  int count = 0;
  num? n1 = num.parse(stdin.readLineSync()!);
  num? n2 = num.parse(stdin.readLineSync()!);
  num? n3 = num.parse(stdin.readLineSync()!);
  num? n4 = num.parse(stdin.readLineSync()!);
  num? n5 = num.parse(stdin.readLineSync()!);
  num? n6 = num.parse(stdin.readLineSync()!);

  numbers.addAll([n1, n2, n3, n4, n5, n6]);

  numbers.forEach((number) {
    if (number > 0) count++;
  });

  print("$count valores positivos");
}
