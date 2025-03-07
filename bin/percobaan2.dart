int fibbon(int x) {
  if (x <= 0 || x <= 1) {
    return x;
  } else {
    return fibbon(x - 2) + fibbon(x - 1);
  }
}

void main() {
  int n = 10;
  for (int i = 0; i < n; i++) {
    print("f$i = ${fibbon(i)}");
  }
}
