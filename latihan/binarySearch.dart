import 'dart:io';

int binarySearchRekursi(
    List<int> list, int index_awal, int index_akhir, int elemen) {
  if (index_akhir >= index_awal) {
    int tengah = index_awal + (index_akhir - index_awal) ~/ 2;
    if (list[tengah] == elemen) return tengah;
    if (list[tengah] > elemen)
      return binarySearchRekursi(list, index_awal, tengah - 1, elemen);
    return binarySearchRekursi(list, tengah + 1, index_akhir, elemen);
  }
  return -1;
}

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  stdout.write('Masukkan elemen yang dicari: ');
  int elemen = int.parse(stdin.readLineSync() ?? "");
  int hasil = binarySearchRekursi(list, 0, list.length - 1, elemen);
  if (hasil == -1) {
    print("Elemen tidak ditemukan");
  } else {
    print("Elemen ditemukan pada index ke-$hasil");
  }
}
