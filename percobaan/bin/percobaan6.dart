import 'dart:io';

void tail(int i) {
  if (i > 0) {
    stdout.write('$i ');
    tail(i - 1);
  }
}

void main() {
  tail(10);
}
