import 'dart:io';

void main() {
  int toplama(int sayi1, int sayi2) {
    int sonuc = sayi1 + sayi2;
    //print("Sonuç $sonuc");
    return sonuc;
  }

  int cikarma(int sayi1, int sayi2) {
    int sonuc = sayi1 - sayi2;
    //print("Sonuç $sonuc");
    return sonuc;
  }

  int carpma(int sayi1, int sayi2) {
    int sonuc = sayi1 * sayi2;
    //print("Sonuç $sonuc");
    return sonuc;
  }

  double bolme(int sayi1, int sayi2) {
    double sonuc = sayi1 / sayi2;
    //print("Sonuç $sonuc");
    return sonuc;
  }

  print("Birinci sayıyı girin:");
  int sayi1 = int.parse(stdin.readLineSync() ?? "0");

  print("İkinci sayıyı girin:");
  int sayi2 = int.parse(stdin.readLineSync() ?? "0");

  print("Lütfen bir işlem seçiniz: (+,-,/,*)");
  String? islem = stdin.readLineSync();

  try {
    if (islem == "+") {
      toplama(sayi1, sayi2);
      print("Sonuç: $toplama");
    } else if (islem == "-") {
      cikarma(sayi1, sayi2);
      print("Sonuç: $cikarma");
    } else if (islem == "/") {
      bolme(sayi1, sayi2);
      print("Sonuç: $bolme");
    } else if (islem == "*") {
      carpma(sayi1, sayi2);
      print("Sonuç: $carpma");
    } else {
      print("Yanlış işlem seçtiniz");
    }
  } catch (e) {
    print("Yoktur ama varsada böyle bir problem çıktı $e");
  }
}
