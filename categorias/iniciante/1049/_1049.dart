import 'dart:io';

void main() {
  String word1 = stdin.readLineSync()!;
  String word2 = stdin.readLineSync()!;
  String word3 = stdin.readLineSync()!;

  late String animal;

  if (word1 == "vertebrado") {
    if (word2 == "ave" && word3 == "carnivoro") {
      animal = "aguia";
    } else if (word2 == "ave" && word3 == "onivoro") {
      animal = "pomba";
    }

    if (word2 == "mamifero" && word3 == "onivoro") {
      animal = "homem";
    } else if (word2 == "mamifero" && word3 == "herbivoro") {
      animal = "vaca";
    }
  } else {
    if (word2 == "inseto" && word3 == "hematofago") {
      animal = "pulga";
    } else if (word2 == "inseto" && word3 == "herbivoro") {
      animal = "lagarta";
    }

    if (word2 == "anelideo" && word3 == "hematofago") {
      animal = "sanguessuga";
    } else if (word2 == "anelideo" && word3 == "onivoro") {
      animal = "minhoca";
    }
  }

  print(animal);
}
