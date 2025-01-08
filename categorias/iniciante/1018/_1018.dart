import 'dart:io';

void main() {
  int? valor = int.parse(stdin.readLineSync()!);
  List<int> cedulas = [100, 50, 20, 10, 5, 2, 1];
  int remainder = valor;

  print(valor);

  cedulas.forEach((cedula) {
    print("${remainder ~/ cedula} nota(s) de R\$ $cedula,00");
    remainder = remainder - ((remainder ~/ cedula) * cedula);
  });
}
