import 'dart:io';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> splitedValues = splitValues(line);

  int? a = int.parse(splitedValues[0]);
  int? b = int.parse(splitedValues[1]);
  int? c = int.parse(splitedValues[2]);

  int maiorAB = ((a + b + (a - b).abs()) ~/ 2);
  int maior = maiorAB > c ? maiorAB : c;

  print("$maior eh o maior");
}

List<String> splitValues(String line) {
  List<String> splitedValues = line.split(" ");

  return splitedValues;
}
