import 'dart:io';
import 'dart:math';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> splitedValues = splitValues(line);

  double a = double.parse(splitedValues[0]);
  double b = double.parse(splitedValues[1]);
  double c = double.parse(splitedValues[2]);

  print("TRIANGULO: ${((a * c) / 2).toStringAsFixed(3)}");
  print("CIRCULO: ${(3.14159 * (pow(c, 2))).toStringAsFixed(3)}");
  print("TRAPEZIO: ${(((a + b) * c) / 2).toStringAsFixed(3)}");
  print("QUADRADO: ${pow(b, 2).toStringAsFixed(3)}");
  print("RETANGULO: ${(a * b).toStringAsFixed(3)}");
}

List<String> splitValues(String line) {
  List<String> splitedValues = line.split(" ");

  return splitedValues;
}
