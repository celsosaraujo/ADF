void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  print('\n 1 - Remova os pacientes duplicados e apresente a nova lista');
  var pessoasExclusivas = pessoas.toSet().map((e) => e.split("|")).toList();
  pessoasExclusivas.sort( (pessoa1, pessoa2) => pessoa1[0].compareTo(pessoa2[0]) );
  pessoasExclusivas.forEach((print));

  print(
      '\n2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  var dadosPessoasExclusivasMasculino = pessoasExclusivas
      .where((pessoa) => pessoa[2].substring(0, 1).toLowerCase() == 'm');
  var dadosPessoasExclusivasFeminino = pessoasExclusivas
      .where((pessoa) => pessoa[2].substring(0, 1).toLowerCase() == 'f');
  print(
      'Total de pessoas do Sexo Masculino: ${dadosPessoasExclusivasMasculino.length}');
  // dadosPessoasExclusivasMasculino
  //     .forEach((pessoa) => print('Nome: ${pessoa[0]} Idade: ${pessoa[1]}'));
  dadosPessoasExclusivasMasculino
      .forEach(imprimePessoa);

  print(
      'Total de pessoas do Sexo Feminino: ${dadosPessoasExclusivasFeminino.length}');
  dadosPessoasExclusivasFeminino
      .forEach((pessoa) => print('Nome: ${pessoa[0]} Idade: ${pessoa[1]}'));

  print(
      '\n 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  var dadosPessoasEsclusivasMaioresDe18 =
      pessoasExclusivas.where((pessoa) => int.parse(pessoa[1]) > 18);
  dadosPessoasEsclusivasMaioresDe18
      .forEach((pessoa) => print('Nome: ${pessoa[0]}'));

  print('\n 4 - Encontre a pessoa mais velha e apresente o nome dela');
  var listaDadosPessoasExclusivas = pessoasExclusivas.toList();
  listaDadosPessoasExclusivas.sort((pessoa1, pessoa2) => pessoa2[1].compareTo(pessoa1[1]));
  print('Pessoa mais velha: ${listaDadosPessoasExclusivas[0][0]} possui ${listaDadosPessoasExclusivas[0][1]} anos.');
}

void imprimePessoa( List pessoa ){
  print('Nome: ${pessoa[0]} Idade: ${pessoa[1]}');
}
