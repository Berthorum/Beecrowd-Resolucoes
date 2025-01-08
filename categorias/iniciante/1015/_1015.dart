import 'dart:io';
import 'dart:math';

void main() {
  String? p1 = stdin.readLineSync()!;
  String? p2 = stdin.readLineSync()!;

  List<String> p1Data = splitValues(p1);
  List<String> p2Data = splitValues(p2);

  double p1X = double.parse(p1Data[0]);
  double p1Y = double.parse(p1Data[1]);

  double p2X = double.parse(p2Data[0]);
  double p2Y = double.parse(p2Data[1]);

  String distance =
      (sqrt(pow(p2X - p1X, 2) + pow(p2Y - p1Y, 2))).toStringAsFixed(4);

  print(distance);
}

List<String> splitValues(String line) {
  List<String> splitedValues = line.split(" ");

  return splitedValues;
}
