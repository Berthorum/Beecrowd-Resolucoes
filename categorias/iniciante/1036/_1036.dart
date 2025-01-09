import 'dart:io';
import 'dart:math';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> data = splitValues(line);

  double a = double.parse(data[0]);
  double b = double.parse(data[1]);
  double c = double.parse(data[2]);

  double bhaskara = pow(b, 2) - (4 * a * c);

  if (a == 0 || sqrt(bhaskara).isNaN) {
    print("Impossivel calcular");
  } else {
    String r1 = (((b * -1) + sqrt(bhaskara)) / (2 * a)).toStringAsFixed(5);
    String r2 = (((b * -1) - sqrt(bhaskara)) / (2 * a)).toStringAsFixed(5);

    print("R1 = $r1");
    print("R2 = $r2");
  }
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
