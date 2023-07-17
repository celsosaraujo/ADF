void main() {
//os operadores relacionais são usados para comparar valores e
//retornam um resultado booleano (verdadeiro ou falso) com base na comparação.

//Os operadores relacionais em Dart são:
// Igual: == - Verifica se dois valores são iguais.
// Diferente: != - Verifica se dois valores são diferentes.
// Maior que: > - Verifica se o valor da esquerda é maior que o valor da direita.
// Menor que: < - Verifica se o valor da esquerda é menor que o valor da direita.
// Maior ou igual a: >= - Verifica se o valor da esquerda é maior ou igual ao valor da direita.
// Menor ou igual a: <= - Verifica se o valor da esquerda é menor ou igual ao valor da direita.

  final idade = 18;

  if (idade == 18) {
    print("Pode receber a habilitação provisória");
  } else if (idade > 18) {
    print("Pode receber a habilitação provisória, permanente ou renovação");
  } else {
    print("Não pode receber a habilitação");
  }
}
