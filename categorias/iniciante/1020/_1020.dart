import 'dart:io';

void main() {
  int? ageInDays = int.parse(stdin.readLineSync()!);
  int remainder = 0;

  int years = ageInDays ~/ 365;
  remainder = ageInDays % 365;
  int months = remainder ~/ 30;
  remainder %= 30;

  print("$years ano(s)");
  print("$months mes(es)");
  print("$remainder dia(s)");
}
