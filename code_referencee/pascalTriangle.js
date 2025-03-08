function printPascalsPyramid(rows) {
  for (let i = 0; i < rows; i++) {
    let output = "";
    for (let j = 0; j <= i; j++) {
      output += pascalNumber(i, j) + " ";
    }
    console.log(output);
  }
}

function pascalNumber(row, column) {
  if (column === 0 || column === row) {
    return 1;
  } else {
    return pascalNumber(row - 1, column - 1) + pascalNumber(row - 1, column);
  }
}

printPascalsPyramid(5);
