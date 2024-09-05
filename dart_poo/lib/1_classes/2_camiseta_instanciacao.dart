import 'package:dart_poo/1_classes/1_camiseta_atributos.dart';

void main() {
  Camiseta camisetaNike = new Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  //string multilinha (multiline-string)
  print('''
    Camiseta: 
      Tamanho ${camisetaNike.tamanho}
      Cor: ${camisetaNike.cor}
      Marca: ${camisetaNike.marca}
''');

  //pode omitir o tipo de utilizar var ou final, utilizando a inferência
  //pode omitir a palavra reservada new para construir uma instancia do objeto
  var camisetaAdidas =  Camiseta();
  camisetaAdidas.tamanho = 'M';
  camisetaAdidas.cor = 'Branca';
  camisetaAdidas.marca = 'Adidas';

  print('''
    Camiseta: 
      Tamanho ${camisetaAdidas.tamanho}
      Cor: ${camisetaAdidas.cor}
      Marca: ${camisetaAdidas.marca}
''');



}