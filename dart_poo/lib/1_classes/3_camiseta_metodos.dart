//Sintaxe
// class NomeDaClasse{
//   tipo nomeDoAtributos
//   tipoDeRetorno nomeDoMetodo
//}
class Camiseta {
  //Atributos: representam as características
  //são variáveis que armazenam os valores
  /*
    1º Declaração
    String tamanho = 'G';
    String cor = 'Preta';
    String marca = 'Nike';
    */
  String? tamanho;
  String? cor;
  String? marca;

  //métodos: representa a ação de uma classe
  //são funções dentro de nossas classes
  void imprimir() {
    print('''
    Camiseta: 
      Tamanho $tamanho
      Cor: $cor
      Marca: $marca
''');
  }
}
