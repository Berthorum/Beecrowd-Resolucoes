import 'dart:io';
import 'dart:math';

void main() {
  double n = 3.14159;
  double? raio = double.parse(stdin.readLineSync()!);

  String result = (n * pow(raio, 2)).toStringAsFixed(4);

  print("A=$result");
}
