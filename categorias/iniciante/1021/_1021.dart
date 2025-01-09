import 'dart:io';

void main() {
  double? valor = double.parse(stdin.readLineSync()!);
  List<int> notas = [100, 50, 20, 10, 5, 2];
  List<double> moedas = [1, 0.50, 0.25, 0.10, 0.05, 0.01];
  double remainder = valor;

  print("NOTAS:");
  notas.forEach((nota) {
    print("${remainder ~/ nota} nota(s) de R\$ ${nota.toStringAsFixed(2)}");
    remainder = remainder - ((remainder ~/ nota) * nota);
  });

  print("MOEDAS:");
  moedas.forEach((moeda) {
    print("${remainder ~/ moeda} moeda(s) de R\$ ${moeda.toStringAsFixed(2)}");
    remainder = double.parse((remainder - ((remainder ~/ moeda) * moeda)).toStringAsFixed(2));
  });
}
