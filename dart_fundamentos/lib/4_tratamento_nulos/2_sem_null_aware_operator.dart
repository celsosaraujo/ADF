String? nome;
void main() {
  
  //apresentará o erro, por isso deve fazer um condicional
  /*
  var nomeCompleto = !nome + ' Sobrenome';
  */

  var nomeCompleto = (nome != null)? nome! + ' Sobrenome' : ' Nome e Sobrenome';

  // ou realizando a comparação antes de atriuir

  var nomeCompleto2;

  if(nome != null){
    nomeCompleto2 = nome! + "Sobrenome";
  }else{
    nomeCompleto2 = "Nome e Sobrenome";
  }

  // ou criando uma variável local para realizar o controle da promoção automática de nula para não nula
var nomeLocal = nome;
if( nomeLocal == null){
  nomeLocal = 'Nome ';
}
var nomeCompleto3 = nomeLocal + ' Sobrenome';







}