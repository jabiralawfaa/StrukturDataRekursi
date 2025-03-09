void main() {
  int barisan = 5;
  displayPascalTriangle(barisan);
}

int pascal(int baris, int kolom) {
  if (kolom == 0 || kolom == baris) {
    return 1;
  }
  return pascal(baris - 1, kolom - 1) + pascal(baris - 1, kolom);
}

void displayPascalTriangle(int barisan) {
  for (int i = 0; i < barisan; i++) {
    String output = '';
    for (int j = 0; j <= i; j++) {
      String pascalStr = pascal(i, j).toString();
      output += pascalStr + ' ';
    }
    int padding = barisan - i;
    print("barisan ${i + 1} = ${" " * padding} $output");
  }
}
