import 'dart:io';

void main() {
  String? line = stdin.readLineSync()!;

  List<String> data = splitValues(line);

  double n1 = double.parse(data[0]);
  double n2 = double.parse(data[1]);
  double n3 = double.parse(data[2]);
  double n4 = double.parse(data[3]);

  double media = ((n1 * 2) + (n2 * 3) + (n3 * 4) + n4) / 10;

  print("Media: ${media.toStringAsFixed(1)}");

  if (media >= 5.0 && media <= 6.9) {
    print("Aluno em exame.");
    double? notaExame = double.parse(stdin.readLineSync()!);
    print("Nota do exame: $notaExame");
    double novaMedia = (media + notaExame) / 2;

    if (novaMedia >= 5.0) {
      print("Aluno aprovado.");
    } else {
      print("Aluno reprovado.");
    }
    print("Media final: ${novaMedia.toStringAsFixed(1)}");
  } else {
    if (media >= 7.0) {
      print("Aluno aprovado.");
    } else {
      print("Aluno reprovado.");
    }
  }
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
