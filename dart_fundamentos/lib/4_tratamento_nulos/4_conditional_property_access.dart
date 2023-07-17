String? nomeCompletoNulo;
String nomeCompletoNaoNulo = 'Nome e Sobrenome';
void main() {

  //utilizando if
  // obsere que é necessário utilizar a ! para "forçar" o acesso a variárial
  if(nomeCompletoNulo != null){
    print(nomeCompletoNulo!.toUpperCase());
  }else{
    print('Não preenchido');
  }

  // Condicional Property Access
  // Incluir a interrogação depois do nome
  // combinado com o aware null (duas interrogações) cria-se um teste ternário
  print( nomeCompletoNulo?.toUpperCase() ?? 'Não Preenchido' );

}