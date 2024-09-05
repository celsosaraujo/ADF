import 'package:dart_poo/1_classes/3_camiseta_metodos.dart';

void main() {

  Camiseta camisetaNike = new Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';
  camisetaNike.imprimir(); 
    

  //pode omitir o tipo de utilizar var ou final, utilizando a inferência
  //pode omitir a palavra reservada new para construir uma instancia do objeto
  var camisetaAdidas =  Camiseta();
  camisetaAdidas.tamanho = 'M';
  camisetaAdidas.cor = 'Branca';
  camisetaAdidas.marca = 'Adidas';
  camisetaAdidas.imprimir(); 

}