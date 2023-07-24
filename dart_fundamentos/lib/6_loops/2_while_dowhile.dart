void main() {

  print('While condicinal');
  var numero = 0;
  while( numero <= 10){
    print(numero);
    numero++;
  }

  var indice = 0;
  print('while condicional');
  while( indice < 0 ){
    print('Indice #$indice');
    indice++;
  }

  print('do-. while');
  do{
    print('Indice #$indice');
    indice++;
  }while( indice < 0 );
}