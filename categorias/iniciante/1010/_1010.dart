import 'dart:io';

void main() {
  double total = 0;

  for (int i = 0; i < 2; i++) {
    String? line = stdin.readLineSync()!;
    List<String> result = splitValues(line);

    total += (double.parse(result[1]) * double.parse(result[2]));
  }

  print("VALOR A PAGAR: R\$ ${total.toStringAsFixed(2)}");
}

List<String> splitValues(String line) {
  List<String> splitedValues = line.split(" ");

  return splitedValues;
}
