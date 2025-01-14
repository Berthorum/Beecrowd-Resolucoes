import 'dart:io';

void main() {
  num n1 = num.parse(stdin.readLineSync()!);
  num n2 = num.parse(stdin.readLineSync()!);
  num n3 = num.parse(stdin.readLineSync()!);
  num n4 = num.parse(stdin.readLineSync()!);
  num n5 = num.parse(stdin.readLineSync()!);
  num n6 = num.parse(stdin.readLineSync()!);

  List<num> valores = List.of([n1, n2, n3, n4, n5, n6]);
  int totalPositivos = 0;
  double media = 0;

  for (num element in valores) {
    if (element > 0) {
      media += element;
      totalPositivos++;
    }
  }

  media /= totalPositivos;

  print("$totalPositivos valores positivos");
  print("${media.toStringAsFixed(1)}");
}
