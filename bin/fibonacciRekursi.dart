int Fibonacci(int n) {
  if (n <= 1) return n;
  return Fibonacci(n - 1) + Fibonacci(n - 2);
}

void main() {
  int n = 8;
  List<int> result = [];

  for (int i = 1; i <= n; i++) {
    result.add(Fibonacci(i));
  }
  print("hasil deret fibonacci $n adalah = " + result.join(", "));
}
