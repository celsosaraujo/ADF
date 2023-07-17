void main() {
  //Declaração e reatribuição
  var nomeCurso = "Fundamentos em dart";
  print(nomeCurso);

  // Reatribuição
  nomeCurso = "Fundamentos em Dart versão atual ";
  print(nomeCurso);

  //final: 
  //Uma variável declarada como final pode ser atribuída apenas uma vez e seu valor não pode ser alterado depois de ser definido. 
  //Ela é inicializada quando é acessada pela primeira vez. 
  //A variável final é usada para indicar que seu valor será definido uma vez e permanecerá constante.
  final nomeCursoFinal = "Fundamentos em dart";
  print(nomeCursoFinal);

  //Não é possível reatribuir o valor
  // nomeCursoFinal = "Fundamentos em Dart versão atual ";

  //const: Uma variável declarada como const é uma constante em tempo de compilação. 
  //Seu valor deve ser determinado em tempo de compilação e não pode ser alterado durante a execução do programa. 
  final nomeCursoConst = "Fundamentos em dart";
  print(nomeCursoConst);

  //Direfença entre final e constAlgumas diferenças importantes entre final e const incluem:
  //- final é atribuído em tempo de execução, enquanto const é atribuído em tempo de compilação.
  //- final pode ter um valor diferente para cada instância de uma classe, 
  //  enquanto const é compartilhado por todas as instâncias da classe.
  // final pode ter seu valor determinado em tempo de execução, enquanto const deve ter seu valor determinado em tempo de compilação.
  //
  // Em resumo, use final quando você deseja uma variável cujo valor possa ser definido em tempo de execução e 
  // não precisará ser alterado posteriormente. 
  //Use const quando você deseja uma variável cujo valor é uma constante em tempo de compilação e não será alterado 
  //durante a execução do programa.



  //late:
  //Uma variável declarada como late é inicialmente não inicializada, 
  //mas o valor será atribuído antes do primeiro acesso a ela. 
  //A variável late permite que você adie a inicialização de uma variável até o momento em que for necessária.

}