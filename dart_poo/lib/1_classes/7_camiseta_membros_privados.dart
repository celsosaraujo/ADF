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
  //Underline(_) no início da declaração do atributo, ele passa a ter o acesso privado
  //pode ser acesso apenas dentro da própria classe
  //serve para encapsular uma regra de negócio 
  //Em DART existem apenas dois tipos de modificadores de acesso: public ou private

  //o usuário poderá informa apenas os tamanhos P, M ou G
  final _listaTamanhosValidos = ['P','M','G'];
  String? _tamanho;

  String? cor;
  String? marca;

  //declara o método acessador gettes/setters
  String? get tamanho => _tamanho;
  set tamanho(String? tamanho){
    if( _listaTamanhosValidos.contains(tamanho)){
      _tamanho = tamanho;
    }else{
      throw Exception("Tamanho inválido");
    }
  }


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
