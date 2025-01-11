import 'dart:io';

void main() {
  double salario = double.parse(stdin.readLineSync()!);
  late double novoSalario;
  double reajuste = 0;
  if (salario > 0 && salario <= 400.00) {
    reajuste = 0.15;
  } else if (salario >= 400.01 && salario <= 800.00) {
    reajuste = 0.12;
  } else if (salario >= 800.01 && salario <= 1200.00) {
    reajuste = 0.10;
  } else if (salario >= 1200.01 && salario <= 2000.00) {
    reajuste = 0.07;
  } else {
    reajuste = 0.04;
  }

  novoSalario = salario + (salario * reajuste);

  print("Novo salario: ${novoSalario.toStringAsFixed(2)}");
  print("Reajuste ganho: ${(novoSalario - salario).toStringAsFixed(2)}");
  print("Em percentual: ${(reajuste * 100).toStringAsFixed(0)} %");
}
