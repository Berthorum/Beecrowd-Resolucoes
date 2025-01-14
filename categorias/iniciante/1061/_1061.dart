import 'dart:io';

/*
  *** Resolução com Consulta (Python) ***
  Link da Resolução Consultada -> https://github.com/xTecna/solucoes-da-beecrowd/blob/main/problemas/iniciante/1061/README.md
*/ 
void main() {
  String diaInicio = stdin.readLineSync()!;
  String diaInicioHorario = stdin.readLineSync()!;

  String diaFim = stdin.readLineSync()!;
  String diaFimHorario = stdin.readLineSync()!;

  List<String> dataDia1 = splitValues(diaInicioHorario, " : ");
  List<String> dataDia2 = splitValues(diaFimHorario, " : ");

  int diaInicioMes = int.parse(splitValues(diaInicio, " ")[1]);
  int diaFimMes = int.parse(splitValues(diaFim, " ")[1]);

  int horaInicial = int.parse(dataDia1[0]);
  int minInicial = int.parse(dataDia1[1]);
  int segInicial = int.parse(dataDia1[2]);

  int horaFinal = int.parse(dataDia2[0]);
  int minFinal = int.parse(dataDia2[1]);
  int segFinal = int.parse(dataDia2[2]);

  int dias = 0;
  int horas = 0;
  int minutos = 0;
  int segundos = 0;

  int totalTempo = totalEmSegundos(diaFimMes, horaFinal, minFinal, segFinal) -
      totalEmSegundos(diaInicioMes, horaInicial, minInicial, segInicial);

  dias = totalTempo ~/ (24 * 3600);
  horas = (totalTempo % (24 * 3600)) ~/ 3600;
  minutos = ((totalTempo % (24 * 3600)) % 3600) ~/ 60;
  segundos = (((totalTempo % (24 * 3600)) % 3600) % 60) ~/ 1;

  print("$dias dia(s)");
  print("$horas hora(s)");
  print("$minutos minuto(s)");
  print("$segundos segundo(s)");
}

List<String> splitValues(String line, String flag) {
  List<String> splittedValues = line.split(flag);

  return splittedValues;
}

int totalEmSegundos(int dia, int hora, int min, int sec) {
  return (dia * 24 * 3600) + (hora * 3600) + (min * 60) + sec;
}
