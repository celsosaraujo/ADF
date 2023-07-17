
void main() {
  //Null safety é uma característica introduzida no Dart a partir da versão 2.12 que visa evitar ocorrências de erros 
  //relacionados a valores nulos (null) em tempo de execução. 
  //O null safety torna o sistema de tipos do Dart mais rigoroso ao lidar com valores nulos, ajudando os desenvolvedores a evitar erros comuns, como NullPointerExceptions.

  //  Variáveis non-nullable: essas variáveis não podem conter valores nulos e são representadas usando o tipo
  // String nomeCompleto = null;
  // nomeCompleto = "Fundamentos do Dart";
  // print(nomeCompleto.length);  

  // Variáveis nullable: essas variáveis podem conter valores nulos e são representadas usando o tipo Tipo?
  String? nomeCompleto = null;
  //nomeCompleto = "Fundamentos do Dart";

  //É importante usar o operador de exclamação com cuidado, pois ele remove a verificação de nulidade e 
  //transfere a responsabilidade para o desenvolvedor. 
  //O uso inadequado do operador de exclamação pode resultar em exceções em tempo de execução se uma 
  //variável realmente for nula. Portanto, é recomendado usá-lo apenas quando você tiver total 
  //confiança de que a variável não é nula naquele ponto específico do código.
  String saudacao = "Olá " + nomeCompleto!;

  //Dentro de uma função, uma variável possui escopo local, 
  //o que significa que ela só pode ser utilizada dentro do próprio bloco de código da função. 
  //Isso é conhecido como "escopo local" ou "escopo da função". 
  //Essa variável pode ser declarada sem nenhum valor de atribuição. 
  String nomeCompletoNivelLocal;
  nomeCompletoNivelLocal = "Fulano de Tal";

}

//As variáveis declaradas fora de uma classe ou função em Dart são chamadas de "variáveis globais" ou "variáveis de escopo superior". 
//Elas são declaradas no nível superior do arquivo, fora de qualquer classe ou função, e estão disponíveis para acesso em todo o 
//escopo do arquivo.
//Tem que atribui um valor na declaração ou declarada como nullable
String nomeCompletoNivelGlobal = '';
