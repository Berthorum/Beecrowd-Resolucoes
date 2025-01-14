import 'dart:io';

void main() {
  int n1 = int.parse(stdin.readLineSync()!);
  int n2 = int.parse(stdin.readLineSync()!);
  int n3 = int.parse(stdin.readLineSync()!);
  int n4 = int.parse(stdin.readLineSync()!);
  int n5 = int.parse(stdin.readLineSync()!);

  List<int> valores = List.of([n1, n2, n3, n4, n5]);
  int totalPares = 0;

  for (int element in valores) {
    if (element % 2 == 0) {
      totalPares++;
    }
  }

  print("$totalPares valores pares");
}
