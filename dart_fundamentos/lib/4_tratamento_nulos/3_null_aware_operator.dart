String? nome;

void main() {
  // As duas interrogações (??) faz um teste ternário
  // Verifica se a variável possui valor, se possuir recupera esse valor,
  // caso contrátio pega o valor após as interrogações
  var nomeCompleto = ( nome ?? 'Nome' ) + ' Sobrenome';

}