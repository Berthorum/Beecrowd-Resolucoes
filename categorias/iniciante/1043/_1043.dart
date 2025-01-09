import 'dart:io';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> data = splitValues(line);

  double a = double.parse(data[0]);
  double b = double.parse(data[1]);
  double c = double.parse(data[2]);

  if (a + b > c && a + c > b && c + b > a) {
    double perimetro = a + b + c;
    print("Perimetro = ${perimetro.toStringAsFixed(1)}");
  } else {
    double area = ((a + b) * c) / 2;
    print("Area = ${area.toStringAsFixed(1)}");
  }
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
