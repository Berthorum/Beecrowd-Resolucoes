import 'dart:io';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> data = splitValues(line);

  int a = int.parse(data[0]);
  int b = int.parse(data[1]);

  if (a % b == 0 || b % a == 0) {
    print("Sao Multiplos");
  } else {
    print("Nao sao Multiplos");
  }
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
