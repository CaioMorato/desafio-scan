function fibonacci(array = [1, 1]) {
  while (array.length < 30) {
    array.push(array[array.length - 1] + array[array.length - 2]);
    fibonacci(array);
  }
  return array;
}

console.log(fibonacci());
