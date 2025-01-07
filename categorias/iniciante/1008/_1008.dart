import 'dart:io';

void main() {
  int? number = int.parse(stdin.readLineSync()!);
  int? hours = int.parse(stdin.readLineSync()!);
  double? hourValue = double.parse(stdin.readLineSync()!);

  String salary = (hours * hourValue).toStringAsFixed(2) ;

  print("NUMBER = $number");
  print("SALARY = U\$ $salary");
}