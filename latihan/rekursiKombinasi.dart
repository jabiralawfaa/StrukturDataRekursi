import 'dart:io';

void GenerateKombinasi(List<String> karakter, int panjang,
    {String prefix = ''}) {
  if (panjang == 0) {
    print(prefix);
    return;
  }

  for (int i = 0; i < karakter.length; i++) {
    GenerateKombinasi(karakter, panjang - 1, prefix: prefix + karakter[i]);
  }
}

String generateHuruf(int n, [String current = 'a']) {
  if (current.length > 1) return '';

  if (n == 1) {
    return current;
  }

  return current +
      ' ' +
      generateHuruf(n - 1, String.fromCharCode(current.codeUnitAt(0) + 1));
}

void main() {
  List<String> karakter = [];
  stdout.write('Masukkan panjang karakter: ');
  int panjang = int.parse(stdin.readLineSync() ?? "");

  DateTime start = DateTime.now();
  generateHuruf(panjang).split(' ').forEach((element) {
    karakter.add(element);
  });
  GenerateKombinasi(karakter, panjang);
  DateTime end = DateTime.now();

  print("Waktu eksekusi: ${end.difference(start).inMilliseconds} ms");
}
