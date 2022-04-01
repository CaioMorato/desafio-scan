const ListaCasas = [
  {
    endereco: 'Rua Castro Alves 550',
    cor: 'Branca',
    metragem: 10,
    comodo: [
      {
        nome: 'quarto',
        janelas: 2,
        portas: 1,
      },
      {
        nome: 'cozinha',
        janelas: 2,
        portas: 2,
      },
      {
        nome: 'sala',
        janelas: 4,
        portas: 3,
      },
    ],
  },
  {
    endereco: 'Rua Balneário Camboriú',
    cor: 'Preta',
    metragem: 60,
    comodo: [
      {
        nome: 'quarto',
        janelas: 1,
        portas: 4,
      },
      {
        nome: 'cozinha',
        janelas: 3,
        portas: 1,
      },
      {
        nome: 'sala',
        janelas: 5,
        portas: 2,
      },
    ],
  },
  {
    endereco: 'Rua Prudente de Moraes',
    cor: 'Verde',
    metragem: 45,
    comodo: [
      {
        nome: 'quarto',
        janelas: 6,
        portas: 2,
      },
      {
        nome: 'cozinha',
        janelas: 5,
        portas: 1,
      },
    ],
  },
];

function filter_houses(array) {
  const filtered_houses = array.filter((house) =>
    house.comodo.some((rooms) => rooms.janelas % 2 === 0)
  );

  let result = '';

  for (let house of filtered_houses) {
    result += `${house.endereco} - ${house.metragem}m² - ${house.comodo.length} comodos \n`;
  }

  return result;
}

console.log(filter_houses(ListaCasas));
