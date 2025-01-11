import 'dart:io';

void main() {
  double? salario = double.parse(stdin.readLineSync()!);
  double imposto = 0.00;
  double faixaCobrada = 0.00;

  if (salario > 0.00 && salario <= 2000.00) {
    print("Isento");
    return;
    
  } else if (salario > 2000.00 && salario <= 3000.00) {
    imposto = (salario - 2000.00) * 0.08;

  } else if (salario > 3000.00 && salario <= 4500.00) {
    faixaCobrada = (salario - 3000.00);
    imposto += faixaCobrada * 0.18;

    imposto += ((salario - 2000.00) - faixaCobrada) * 0.08;

  } else {
    faixaCobrada = (salario - 4500.00);
    imposto += faixaCobrada * 0.28;

    imposto += ((salario - 3000.00) - faixaCobrada) * 0.18;

    faixaCobrada += ((salario - 3000.00) - faixaCobrada);
    imposto += ((salario - 2000.00) - faixaCobrada) * 0.08;
  }

  print("R\$ ${imposto.toStringAsFixed(2)}");
}
