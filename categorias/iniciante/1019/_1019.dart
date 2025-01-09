import 'dart:io';

void main() {
  int? totalTime = int.parse(stdin.readLineSync()!);
  int remainder = 0;

  int hours = totalTime ~/ 3600;
  remainder = totalTime % 3600;

  int min = remainder ~/ 60;
  remainder = remainder % 60;

  print("$hours:$min:$remainder");
}
