import 'dart:io';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> data = splitValues(line);
  int a = int.parse(data[0]);
  int b = int.parse(data[1]);
  int c = int.parse(data[2]);
  int d = int.parse(data[3]);

  bool cond1 = b > c && d > a;
  bool cond2 = (c + d) > (a + b);
  bool cond3 = c > 0 && d > 0;
  bool cond4 = a % 2 == 0;

  if (cond1 && cond2 && cond3 && cond4) {
    print("Valores aceitos");
  } else {
    print("Valores nao aceitos");
  }
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
