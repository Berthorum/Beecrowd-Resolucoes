import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  late int number;
  String result = "";

  for (int i = 0; i < n; i++) {
    number = int.parse(stdin.readLineSync()!);

    if (number == 0) {
      print("NULL");
      continue;
    }

    if (number % 2 == 0) {
      result = "EVEN ";
    } else {
      result = "ODD ";
    }

    if (number > 0) {
      result += "POSITIVE";
    } else {
      result += "NEGATIVE";
    }
    print(result);
  }
}
