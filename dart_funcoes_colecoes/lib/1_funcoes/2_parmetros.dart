void main(List<String> args) {
  //Parãmetros obrigatórios por default
  print('A soma de dois intereiros é ${somaInteiros(10, 20)}');

  //Parãmetros nomeados
  // - São nullables por default
  //  podem ser promovidos para non-null em checagem de null
  print("A soma de 10.2 + 10.2 é ${somaDouble(numero1:10.2,numero2:10.2)}");

  print("A soma de 10.2 + 10.2 através de capos nomeados e obrigatórios é ${somaDoubleObrigatorio(numero1:10.2,numero2:10.2)}");

  print("A soma de 10.2 + null através de capos nomeados com valor 0 por padrão  é ${somaDoubleValorPadraoNaDeclaracao(numero2:10.2)}");

  //Parãmetros opcinais

}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDouble({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.00;
}

double somaDoubleObrigatorio({required double numero1, required double numero2}) {
   return numero1 + numero2;
}

double somaDoubleObrigatorioValorPadraoPorCodigo({required double? numero1, required double numero2}) {
  //atribuição de um valor padrão.
  numero1 ??= 0.00;
   return numero1 + numero2;
}

double somaDoubleValorPadraoNaDeclaracao({double numero1 = 0.00, double numero2 = 0.00}) {
   return numero1 + numero2;
}

int somaInteiro([int numero1 = 0, int numero2 = 0]){
  return numero1 + numero2;
}
