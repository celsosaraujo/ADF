void main(){
  // inteiros: 1,2 3 .. 99999999
  // Decimais: 1.2, 12.0 (O separador de decimal é o ponto)
  // textos: "Celso" (o texto deve estar envolvido com aspas. simples ou dupla)

  // declaração da variável - tipo e nome da variávei
  
  int idade;
  // Inicialização ou atribuição da variável 
  // nomeVariavel mais operador de atribuição (=) mais o valor que será armazenado
  idade = 10;

  // a variável pode receber novos valores, substituindo o anterior
  idade = 20;

  // posso declarar e atribuir na mesma linha 
  double valorCelular = 2800.36;

  // num é o tipo "pai" dos tipos int ou double
  num qualquerNumero = 1;
  qualquerNumero = 1.5;

  String nomeCurso = "Básico em DART";

  //Padrão de nomenclatura de variável
  //Snackcase
  String nome_aluno = "Fulano";
  //camel case
  String nomeAluno = "Sicrano";

  //Não pode ser utilizado nenhuma palavra reservada para nomear uma variável
  // https://dart.dev/language/keywords
  // String final = "novo acesso";

  //A palavra reservada var é utilizada em Dart para declarar uma variável com um tipo inferido. 
  //Quando usamos var, o tipo da variável é determinado automaticamente pelo compilador com base no valor atribuído a ela. 
  //Isso é conhecido como "inferência de tipo".
  var varlorCelularInferencia = 2800.36;
  var idadeInferencia = 20;
  var nomeCursoInterencia = "Fundamentos DART";

  // Object é a classe base de todos os objetos. 
  // Isso significa que todos os tipos em Dart, incluindo tipos básicos como int, double, bool, 
  //bem como tipos definidos pelo usuário, herdam do tipo Object.
  Object objetoQualquer = 20;
  objetoQualquer = 2800.36;
  objetoQualquer = "Básico em Dart"; 

  //O tipo dynamic é usado para indicar um tipo dinâmico, onde o tipo das variáveis pode ser determinado em tempo de execução. 
  //Uma variável do tipo dynamic pode armazenar qualquer tipo de valor e é flexível em relação aos tipos de operações que podem 
  //ser realizadas sobre ela.
  dynamic varlorDinamico = 2800.36;
  varlorDinamico = 20;
  varlorDinamico = "Fundamentos DART";

  //Evite os tipos Object e dynamic, pois poderá recebe um erro em tempo de execução.
  varlorDinamico  = varlorDinamico + 10;

  // Erro em tempo de desenvolvimento
  // nomeCursoInterencia = nomeCursoInterencia + 10;



}