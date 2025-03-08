void GenerateCombination(List<String> karakter, int panjang,
    {String prefix = ''}) {
  if (panjang == 0) {
    print(prefix);
    return;
  }

  for (int i = 0; i < karakter.length; i++) {
    GenerateCombination(karakter, panjang - 1, prefix: prefix + karakter[i]);
  }
}

String generateLetters(int n, [String current = 'a']) {
  if (current.length > 1) return '';

  if (n == 1) {
    return current;
  }

  return current +
      ' ' +
      generateLetters(n - 1, String.fromCharCode(current.codeUnitAt(0) + 1));
}

void main() {
  List<String> karakter = [];
  int panjang = 4;
  generateLetters(panjang).split(' ').forEach((element) {
    karakter.add(element);
  });
  GenerateCombination(karakter, panjang);
}
