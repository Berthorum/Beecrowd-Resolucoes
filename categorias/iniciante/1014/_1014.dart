import 'dart:io';

void main() {
  int? km = int.parse(stdin.readLineSync()!);
  double? litros = double.parse(stdin.readLineSync()!);

  print("${(km / litros).toStringAsFixed(3)} km/l");
}
