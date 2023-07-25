void main() {
  //funções arrow
  print("Soma de Interiors com função arrow ${somaInteirosArrow(10, 20)}");

  //funções anônimas
  // ela não possui tipo de retorno e nome
  () {
    print('funções anônimas!');
  }();

  //closures
  var nome = '';
  var idade = 10;
  var funcaoQualquer = () {
    print('executou a função da variável');
  };

  print(nome.runtimeType);
  print(idade.runtimeType);
  print(funcaoQualquer.runtimeType);
  print(funcaoQualquer);
  funcaoQualquer();

  print(
      'Iniciando a chamada da função chamaUmaFuncaoDeParametro que passa uma função como parâmetro');
  chamaUmaFuncaoDeParametro((nome) {
    print((nome ?? 'nome vázio'));
  });
  print('Finalizando a chamada da função chamaUmaFuncaoDeParametro');

  //typdef
}

//Sintaxe de uma função é dividida em três partes:
//1 - Tipo de Retorno
//2 - Nome
//3 - parâmetros (normais, nomeados{} e opcionais[])

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

//função arrow - simplifica a declaração do corpo da função. Utilizada para algoritimos simples
int somaInteirosArrow(int numero1, int numero2) => numero1 + numero2;

void chamaUmaFuncaoDeParametro(Function(String? nome) funcaoQueRecebeNome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Fulano de Tal';
  print('Finalizando o corpo da função chamaUmaFuncaoDeParametro');
  print('Invocando a função funcaoQueRecebeNome');
  funcaoQueRecebeNome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);

void chamaUmaFuncaoDeParametroTypedef(FuncaoQueRecebeNome funcaoQueRecebeNome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Fulano de Tal';
  print('Finalizando o corpo da função chamaUmaFuncaoDeParametro');
  print('Invocando a função funcaoQueRecebeNome');
  funcaoQueRecebeNome(nomeCompleto);
}

// typedef facilita a declaração de um parametro de função que uma função receberá
typedef FuncaoComParametrosComplexos = String Function(
    String nome, String Sobrenome,
    {required int? idade, required int? qtdeDependentes});

// parametro do tipo Funcition sem typeDef
void funcaoComParametroFunctionSemTypedef(String Function(
    String nome, String Sobrenome,
    {required int? idade, required int? qtdeDependentes}) nome){}

// parametro do tipo Funcition com typeDef
void funcaoComParametroFunctionComTypedef(FuncaoComParametrosComplexos nome){}


