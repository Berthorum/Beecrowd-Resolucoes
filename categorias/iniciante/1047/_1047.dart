import 'dart:io';

void main() {
  String line = stdin.readLineSync()!;
  List<String> data = splitValues(line);

  int horaInicial = int.parse(data[0]);
  int minInicial = int.parse(data[1]);
  int horaFinal = int.parse(data[2]);
  int minFinal = int.parse(data[3]);

  double horaInicialTotal = horaInicial + (minInicial / 60);
  double horaFinalTotal = horaFinal + (minFinal / 60);

  double totalHoras = 0;
  double totalMin = 0;

  if (horaFinalTotal <= horaInicialTotal) {
    totalHoras = (24 - horaInicialTotal) + horaFinalTotal;
  } else {
    totalHoras = horaFinalTotal - horaInicialTotal;
  }

  totalMin =
      double.parse(((totalHoras % 1) * 60).toStringAsFixed(1)).roundToDouble();

  print(
      "O JOGO DUROU ${totalHoras ~/ 1} HORA(S) E ${totalMin.toStringAsFixed(0)} MINUTO(S)");
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
