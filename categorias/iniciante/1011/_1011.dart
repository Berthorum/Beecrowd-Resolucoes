import 'dart:io';
import 'dart:math';

void main(){
  double? raio = double.parse(stdin.readLineSync()!);

  String volumeEsfera = ((4/3) * 3.14159 * (pow(raio, 3))).toStringAsFixed(3);

  print("VOLUME = $volumeEsfera");
}