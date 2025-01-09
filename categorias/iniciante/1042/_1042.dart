import 'dart:io';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> data = splitValues(line);
  List<int> dataConverted = [];
  int aux;

  data.forEach((item) => dataConverted.add(int.parse(item)));

  for (int i = 0; i < dataConverted.length; i++) {
    for (int j = 0; j < dataConverted.length; j++) {
      if (dataConverted[i] < dataConverted[j]) {
        aux = dataConverted[i];
        dataConverted[i] = dataConverted[j];
        dataConverted[j] = aux;
      }
    }
  }

  for (int item in dataConverted) {
    print(item);
  }

  print("");

  for (String item in data) {
    print(item);
  }
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
