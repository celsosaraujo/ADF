//Sintaxe
// class NomeDaClasse{
//   tipo nomeDoAtributos
//   tipoDeRetorno nomeDoMetodo
//}
class Camiseta {

  //Membros staticos são considerados como membros de classes
  //Não precisam de uma instancia para acessá-los
  //é o mesmo valor para todas as instâncias
   static var contadorCamiseta = 0; 

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

  static void imprimeContador(){
    print("Foram criadas $contadorCamiseta objetos de camisetas");
  }
}
