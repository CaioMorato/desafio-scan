function triangle_generator(side_1, side_2, side_3) {
  const rule_1 = Math.abs(side_2 - side_3) < side_1 && side_1 < side_2 + side_3;
  const rule_2 = Math.abs(side_1 - side_3) < side_2 && side_2 < side_1 + side_3;
  const rule_3 = Math.abs(side_1 - side_2) < side_3 && side_3 < side_1 + side_2;

  if (!rule_1 || !rule_2 || !rule_3) {
    return 'Os lados digitados não retornam um triângulo válido';
  }

  if (side_1 !== side_2 && side_1 !== side_3 && side_2 !== side_3) {
    return 'O triângulo criado é um triângulo Escaleno';
  }

  if (side_1 === side_2 && side_1 === side_3) {
    return 'O triângulo criado é um triângulo Equilátero';
  }

  return 'O triângulo criado é um triângulo Isóceles';
}

console.log(triangle_generator(3, 4, 5));
