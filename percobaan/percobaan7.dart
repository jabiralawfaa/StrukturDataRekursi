int factAux(int n, int result) {
  if (n == 1) {
    return result;
  }
  return factAux(n - 1, n * result);
}

int fact(int n) {
  return factAux(n, 1);
}

void main() {
  int result = fact(5);
  print('Faktorial: $result');
}
