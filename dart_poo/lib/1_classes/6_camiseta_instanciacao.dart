import 'package:dart_poo/1_classes/5_camiseta_membros_staticos.dart';

void main() {


  //Observe que o acesso é através da própria classe
  Camiseta.contadorCamiseta++;

  Camiseta camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';
  camisetaNike.imprimir(); 

  Camiseta.imprimeContador();
    

  Camiseta.contadorCamiseta++;

  //pode omitir o tipo de utilizar var ou final, utilizando a inferência
  //pode omitir a palavra reservada new para construir uma instancia do objeto
  var camisetaAdidas =  Camiseta();
  camisetaAdidas.tamanho = 'M';
  camisetaAdidas.cor = 'Branca';
  camisetaAdidas.marca = 'Adidas';
  camisetaAdidas.imprimir(); 

  Camiseta.imprimeContador();

}