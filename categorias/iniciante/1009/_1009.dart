import 'dart:io';

void main() {
  String? nome = stdin.readLineSync()!;
  double? salario = double.parse(stdin.readLineSync()!);
  double? totalVendas = double.parse(stdin.readLineSync()!);

  String total = (salario + (totalVendas * 0.15)).toStringAsFixed(2);

  print("TOTAL = R\$ $total");
}
