String generateLetters(int n, [String current = 'a']) {
  if (current.length > 1) return ''; // Base case to stop recursion

  if (n == 1) {
    return current;
  }

  return current +
      ' ' +
      generateLetters(n - 1, String.fromCharCode(current.codeUnitAt(0) + 1));
}
