import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  String line;
  List<String> values;
  double n1, n2, n3, media;

  for (int i = 0; i < n; i++) {
    line = stdin.readLineSync()!;
    values = splitValues(line, " ");
    n1 = double.parse(values[0]);
    n2 = double.parse(values[1]);
    n3 = double.parse(values[2]);

    media = ((n1 * 2) + (n2 * 3) + (n3 * 5)) / 10;
    print(media.toStringAsFixed(1));
  }
}

List<String> splitValues(String line, String flag) {
  List<String> splittedValues = line.split(flag);

  return splittedValues;
}
