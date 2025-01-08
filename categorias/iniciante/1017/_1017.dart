import 'dart:io';

void main() {
  int? hours = int.parse(stdin.readLineSync()!);
  int? kmH = int.parse(stdin.readLineSync()!);

  print("${((kmH * hours) / 12).toStringAsFixed(3)}");
}
