import 'dart:io';

void main() {
  String line = stdin.readLineSync()!;
  List<String> data = splitValues(line);

  int horaInicial = int.parse(data[0]);
  int horaFinal = int.parse(data[1]);

  int totalHoras = 0;
  if (horaFinal <= horaInicial) {
    totalHoras = (24 - horaInicial) + horaFinal;
  } else {
    totalHoras = horaFinal - horaInicial;
  }

  print("O JOGO DUROU $totalHoras HORA(S)");
}

List<String> splitValues(String line) {
  List<String> splittedValues = line.split(" ");

  return splittedValues;
}
