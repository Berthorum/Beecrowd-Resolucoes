import 'dart:io';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> data = splitValues(line);

  double x = double.parse(data[0]);
  double y = double.parse(data[1]);

  if (x == 0 && y == 0)
    print("Origem");
  else if (y == 0 && x != 0)
    print("Eixo X");
  else if (x == 0 && y != 0)
    print("Eixo Y");
  else if (x > 0 && y > 0)
    print("Q1");
  else if (x > 0 && y < 0)
    print("Q4");
  else if (x < 0 && y > 0)
    print("Q2");
  else
    print("Q3");
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
