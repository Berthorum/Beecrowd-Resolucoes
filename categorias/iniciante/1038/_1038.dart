import 'dart:io';

void main() {
  String? line = stdin.readLineSync()!;
  List<String> data = splitValues(line);

  int cod = int.parse(data[0]);
  int qtd = int.parse(data[1]);

  late double valorProd;
  late double total;

  switch (cod) {
    case 1:
      valorProd = 4.00;
      break;
    case 2:
      valorProd = 4.50;
      break;
    case 3:
      valorProd = 5.00;
      break;
    case 4:
      valorProd = 2.00;
      break;
    case 5:
      valorProd = 1.50;
      break;
    default:
      break;
  }

  total = valorProd * qtd;

  print("Total: R\$ ${total.toStringAsFixed(2)}");
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
