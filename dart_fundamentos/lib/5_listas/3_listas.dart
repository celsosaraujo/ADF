import 'package:dart_fundamentos/4_tratamento_nulos/2_sem_null_aware_operator.dart';

void main() {
  final numeros = [1,2,3,4];
  print(numeros);

  //método add de List - adiciona um item no final da array
  numeros.add(5);
  print(numeros);

  final nomes = ['Fulano','Beltrano'];
  print(nomes);

  nomes.add('Siclano');
  print(nomes);

  //acesso ao item através do índice - Inicializa com indice 0

  // imprimi o primeiro item da lista
  print(nomes[0]);

// imprimi o terceiro item da lista
  print(nomes[2]);

  //métdo insert de List - adiciona um item na posição de terminada
  nomes.insert(0, 'Novo Primeiro');
  print(nomes);
  
  //método addAll - adiciona um array no final de outro
  final nomes1 = ['Fulano 1','Beltrano 1'];
  nomes.addAll(nomes1);
  print(nomes);

  //método insertAll - adiciona um array dentro de outro
  final nomes2 = ['Fulano 2','Beltrano 2'];
  nomes.insertAll(3,nomes2);
  print(nomes);

  //método remove - exclui um item da lista
  // utilita o operador iguals ==
  nomes.remove('Fulano 1');
  print(nomes);

  nomes.remove('Beltrano 1');
  print(nomes);

  //método removeWhere - Remove um item que atende as especificações da condição
  nomes.removeWhere((nome){
    print('Nome procurado $nome');
    if(nome == 'Fulano 2'){
      return true;
    }else{
      return false;
    }
  }
  );  
  print(nomes);  

  // utilizando lambda
  nomes.removeWhere((nome) => nome == 'Beltrano 2');  
  print(nomes);

  //atributo lenght - Retorna o tamanho da lista
  print(nomes.length);

  //atributo first - retorna o primeiro item da lista
  print(nomes[0]);
  print(nomes.first);

  //atributo last - retorna o ultimo item da lista
  print(nomes[nomes.length - 1]);
  print(nomes.last);

  //metofo firstWhere - retorna o primeiro item que atende um critério
  print( nomes.firstWhere((nome) => nome.contains('Beltrano') ) );

  //Existe o lastWhere também, que retorna o último item que atende um critério
  print( nomes.lastWhere((nome) => nome.contains('Beltrano') ) );

  //método generate = gera listas
  final numerosGerados = List.generate(10, (index) => index + 1 );
  print(numerosGerados);

  final stringGeradas = List.generate(10, (index) => 'Indice ${index + 1}');
  print(stringGeradas);

  //método filled - gera uma lista com a quantide de itens determinado, preenchendo com o mesmo valor
  final repeticoes = List.filled(10, '');
  print(repeticoes);

  //metodo fold - calcula o somatório de todos os itens
  // gera uma lista de 0 ... 100
  // 0 + 1 = 1
  // 1 + 2 = 3
  // 3 + 3 = 6
  // 6 + 4 = 10
  // ...
  // 4950 + 100 = 5050
  final numerosParaCalculo = List.generate(100, (index) => index + 1 );
  print(numerosParaCalculo);
  //Apresenta um erro no + porque não reconhece o tipo
  //print( numerosParaCalculo.fold(0, (totalAnterior, numeroAtual) => totalAnterior = totalAnterior + numeroAtual) ); 

  print( numerosParaCalculo.fold<int>(0, (totalAnterior, numeroAtual) => totalAnterior = totalAnterior + numeroAtual) ); 

  // Spread operator ... (três pontinhos)
  var listaNumerosSpread1 = [1,2,3];
  var listaNumerosSpread2 = [4,5,6];
  listaNumerosSpread1.addAll(listaNumerosSpread2);
  print(listaNumerosSpread1);

  //com o operador spread já posso iniciar e adicionar os itens de outra lista em qqer ponto do indice
  var listaNumerosSpread = [1,2,3, ...listaNumerosSpread2,7];
  print(listaNumerosSpread);

  //Collection if - Adiciona o item apenas se atender o critério
  var promocaoAtiva = true;
  var produto = ['Ceveja', 'Refrigerante', if(promocaoAtiva) 'Suco de Laranja'];
  print(produto);

  promocaoAtiva = false;
  produto = ['Ceveja', 'Refrigerante', if(promocaoAtiva) 'Suco de Laranja'];

  print(produto);

  //Collection for
  var listaInts = [1,2,3];
  var listaStrings = [
    '#0',
    for(var i in listaInts) '#$i'
  ];
  print(listaStrings);

}