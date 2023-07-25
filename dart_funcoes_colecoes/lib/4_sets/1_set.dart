void main(List<String> args) {
  print('\n// List [] permite valores duplicados ');
  var numerosList = [];
  numerosList.add(1);
  numerosList.add(1);
  numerosList.add(2);
  numerosList.add(2);
  numerosList.add(3);
  numerosList.add(4);
  numerosList.add(null);
  numerosList.add(5);
  print(numerosList);


  print('\n// Set {} NÃO permite valores duplicados ');
  var numerosSet = <int?> {};
  numerosSet.add(1);
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(4);
  numerosSet.add(null);
  numerosSet.add(5);
  print(numerosSet);


  print('\n// método List.toSet() para transformar uma lista em um set ');
  var numerosSetDeList = numerosList.toSet();

  print('\n// Set também possui os métodos interable');
  numerosSetDeList.forEach(print);

  print('\n// método difference de Set compara dois Sets e apresenta apenas os itens que exclusivos do primeiro cojutno');
  var conjuntoNumeros1 = {1,2,3,4,5,6};
  var conjuntoNumeros2 = {1,2,3,7};
  print('conjunto 1: $conjuntoNumeros1');
  print('conjunto 2: $conjuntoNumeros2');

  print('\n// método difference de Set compara dois Sets e apresenta apenas os itens que exclusivos do primeiro cojutno');
  print('Itens exclusivos do conjunto 1 em relação ao 2');
  print(conjuntoNumeros1.difference(conjuntoNumeros2));

  print('Itens exclusivos do conjunto 2 em relação ao 1');
  print(conjuntoNumeros2.difference(conjuntoNumeros1));

  print('//\nmétodo union - junta dois sets');
  print(conjuntoNumeros1.union(conjuntoNumeros2));

  print('//\nmétodo intersection - retorna apenas os itens existens nos dois conjuntos');
  print(conjuntoNumeros1.intersection(conjuntoNumeros2));

  var conjuntoNomes1 = {'Fulano', 'Beltrano','Siclano'};
  var conjuntoNomes2 = {'Fulano', 'Beltrano'};
  print('//Conjunto de nomes 1: $conjuntoNomes1');
  print('//Conjunto de nomes 2: $conjuntoNomes2');
  print('Intersecção dos dois conjuntos ${conjuntoNomes1.intersection(conjuntoNomes2)}');

  print('\n// método lookup - pesquisa um item dentro do conjunto, se não encontrar retorna null');
  print(conjuntoNomes2.lookup('Beltrano'));
  print(conjuntoNomes2.lookup('Siclano'));

}