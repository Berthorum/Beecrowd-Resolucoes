import 'dart:io';

void main() {
  double? a = double.parse(stdin.readLineSync()!);
  double? b = double.parse(stdin.readLineSync()!);

  String media = (((a * 3.5) + (b * 7.5)) / 11).toStringAsFixed(5);

  print("MEDIA = $media");
}
