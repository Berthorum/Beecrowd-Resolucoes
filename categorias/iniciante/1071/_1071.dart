import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);

  int soma = 0;

  for (int i = x > y ? x - 1 : y - 1; i > ((x > y) ? y : x); i--) {
    if (i % 2 != 0) {
      soma += i;
    }
  }

  print(soma);
}
