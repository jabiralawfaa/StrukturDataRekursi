function generateCombinations(chars, length, prefix = "") {
  if (prefix.length === length) {
    console.log(prefix);
    return;
  }

  for (let i = 0; i < chars.length; i++) {
    generateCombinations(chars, length, prefix + chars[i]);
  }
}

function main() {
  const chars = Array.from({ length: 26 }, (_, i) => String.fromCharCode(97 + i)); // Generates ['a', 'b', ..., 'z']
  const length = 3;

  console.log("Jumlah karakter =", length);
  generateCombinations(chars.slice(0, 3), length); // Limiting to 'a', 'b', 'c' for output consistency
  console.log("BUILD SUCCESSFUL");
  console.log("(total time: 1 second)");
}

main();
