import 'dart:async';

void main() {
  var numeros = List.generate(10, (index) => index + 1);

  for (var i = 0; i < numeros.length; i++) {
    if (i == 3) {
      continue;
    }
    print("indice Com for convencional #${numeros[i]}");
  }

  numeros
      .where((numero) => numero != 3) //Filtro
      .forEach((numero) => print(
          "indice com os métodos do Interable #$numero")); // conversão de cada linha

  print("utilizando o médodo take");
  //tranforma a lista em um interable, dai em diante é possível acessar ou manipular os elementos através dos métodos
  final numerosAte5 = numeros.takeWhile((numero) => numero <= 6);
  print(numeros[3]);
  print(numerosAte5.elementAt(3));

  final numerosAte7SemNumero5 =
      numeros.takeWhile((numero) => numero <= 6).where((numero) => numero != 5);
  print(numerosAte7SemNumero5);
  //to list converte de interable para list
  print(numerosAte7SemNumero5.toList());

  final numerosRemoverAte5 = numeros.skipWhile((numero) => numero < 5 ).toList();
  print(numerosRemoverAte5);

  var nomes = ['fulano', 'beltrano', 'siclano'];
  var nomesDeBeltranoEmDiante = nomes.skipWhile((nome) => nome != 'beltrano').toList();
  print(nomesDeBeltranoEmDiante);

  //utilize o map para percorrer os elementos da lista e aplicar uma regra de negócio e em seguinda devolver um novo iterable
  var nomesStrList = numeros.map((numero){
    return 'número é $numero';
  }).toList();
  print(nomesStrList);
   
var nomesStrListLambda = numeros.map((numero) => 'número é $numero').toList();
  print(nomesStrListLambda);

 var numerosMais10 = numeros.map((numero) => numero + 10);
 print(numerosMais10);


}
