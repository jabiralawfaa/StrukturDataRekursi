import 'dart:io';

int pangkatrekursif(int x, int y) {
  if (y == 0) {
    return 1;
  } else {
    return x * pangkatrekursif(x, y - 1);
  }
}

void main() {
  stdout.write("Bilangan x pangkat y : \n");
  stdout.write("Bilangan x : ");
  int x = int.parse(stdin.readLineSync()!);
  stdout.write("Bilangan y : ");
  int y = int.parse(stdin.readLineSync()!);
  print('$x dipangkatkan $y = ${pangkatrekursif(x, y)}');
}
