import 'dart:io';

void main() {
  Map<String, int> cobaias = {"coelhos": 0, "ratos": 0, "sapos": 0};

  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    List<String> line = splitValues(stdin.readLineSync()!, " ");
    if (line[1] == "C") {
      cobaias["coelhos"] = (cobaias["coelhos"]! + int.parse(line[0]));
    } else if (line[1] == "R") {
      cobaias["ratos"] = (cobaias["ratos"]! + int.parse(line[0]));
    } else {
      cobaias["sapos"] = (cobaias["sapos"]! + int.parse(line[0]));
    }
  }

  int total_cobaias =
      cobaias["coelhos"]! + cobaias["ratos"]! + cobaias["sapos"]!;

  print("Total: ${total_cobaias} cobaias");
  print("Total de coelhos: ${cobaias['coelhos']}");
  print("Total de ratos: ${cobaias['ratos']}");
  print("Total de sapos: ${cobaias['sapos']}");

  print(
      "Percentual de coelhos: ${((cobaias['coelhos']! * 100.00) / total_cobaias).toStringAsFixed(2)} %");
  print(
      "Percentual de ratos: ${((cobaias['ratos']! * 100.00) / total_cobaias).toStringAsFixed(2)} %");
  print(
      "Percentual de sapos: ${((cobaias['sapos']! * 100.00) / total_cobaias).toStringAsFixed(2)} %");
}

List<String> splitValues(String line, String flag) {
  List<String> splittedValues = line.split(flag);

  return splittedValues;
}
