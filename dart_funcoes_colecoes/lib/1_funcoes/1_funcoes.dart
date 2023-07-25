//Sintaxe
// retorno nome(parametros){}
void main(){
  final valorCalculado = somaInteiros(10,20);
  print('A soma de dois intereiros é $valorCalculado');
}

//funções de nível superior
int somaInteiros( int numero1, int numero2 ){
  print('Executando a soma de números interor');
  /*final soma = numero1 + numero2;
  return soma;*/

  // melhorando o código clean code
  return numero1 + numero2;
}
