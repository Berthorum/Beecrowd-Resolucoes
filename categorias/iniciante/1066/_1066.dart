import 'dart:io';

void main() {
  int n1 = int.parse(stdin.readLineSync()!);
  int n2 = int.parse(stdin.readLineSync()!);
  int n3 = int.parse(stdin.readLineSync()!);
  int n4 = int.parse(stdin.readLineSync()!);
  int n5 = int.parse(stdin.readLineSync()!);

  List<int> valores = List.of([n1, n2, n3, n4, n5]);
  int totalPares = 0;
  int totalPositivos = 0;

  for (int element in valores) {
    if (element % 2 == 0) {
      totalPares++;
    }
    if (element > 0) {
      totalPositivos++;
    }
  }

  print("$totalPares valor(es) par(es)");
  print("${valores.length - totalPares} valor(es) impar(es)");
  print("$totalPositivos valor(es) positivo(s)");
  print(
      "${valores.contains(0) ? (valores.length - 1) - totalPositivos : valores.length - totalPositivos} valor(es) negativo(s)");
}
