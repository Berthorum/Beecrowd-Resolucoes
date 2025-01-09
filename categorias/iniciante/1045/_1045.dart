import 'dart:io';
import 'dart:math';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> data = splitValues(line);
  List<double> dataConverted = [];
  double aux;

  data.forEach((item) => dataConverted.add(double.parse(item)));

  for (int i = 0; i < dataConverted.length; i++) {
    for (int j = i + 1; j < dataConverted.length; j++) {
      if (dataConverted[i] < dataConverted[j]) {
        aux = dataConverted[i];
        dataConverted[i] = dataConverted[j];
        dataConverted[j] = aux;
      }
    }
  }

  double a = dataConverted[0];
  double b = dataConverted[1];
  double c = dataConverted[2];

  if (a >= b + c)
    print("NAO FORMA TRIANGULO");
  else if (pow(a, 2) == (pow(b, 2) + pow(c, 2)))
    print("TRIANGULO RETANGULO");
  else if (pow(a, 2) > (pow(b, 2) + pow(c, 2)))
    print("TRIANGULO OBTUSANGULO");
  else if (pow(a, 2) < (pow(b, 2) + pow(c, 2))) print("TRIANGULO ACUTANGULO");

  if (a == b && b == c)
    print("TRIANGULO EQUILATERO");
  else if (a == b || a == c || b == c) print("TRIANGULO ISOSCELES");
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
