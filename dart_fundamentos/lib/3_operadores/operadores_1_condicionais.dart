void main() {
  //tipo boleano, pode receber o valor false ou true
  var idade = 19;
  bool maiorDeIdade;
  
// Operador de desvio condicional:
//   if (condição1) {
//   // código a ser executado se a condição1 for verdadeira
// } else if (condição2) {
//   // código a ser executado se a condição2 for verdadeira
// } else if (condição3) {
//   // código a ser executado se a condição3 for verdadeira
// } else {
//   // código a ser executado se nenhuma das condições anteriores for verdadeira
// }
// 
// A palavra-chave if indica o início da estrutura condicional.
// A condição1 é uma expressão booleana que será avaliada inicialmente. 
//Se for verdadeira, o código dentro do bloco do if correspondente será executado. Caso contrário, a próxima condição, condição2, será avaliada.
// A condição2 é outra expressão booleana. Se a condição1 for falsa e a condição2 for verdadeira, o código dentro do bloco do else if correspondente será executado. Se não for verdadeira, a próxima condição, condição3, será avaliada.
// Você pode ad




  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  if(maiorDeIdade){
    print("Pode receber a habilitação");    
  }else{
    print("Não pode recer a habilitação");
  }


}
