void main() {
  final idade = 31;
  print('Concatenção de String com operador +');
  print('Sua idade é ' + idade.toString());

  print('Concatenção de String com interpolação de String');
  print('Sua idade é $idade');

  print('A classe int possui vários metodos úteis como isEven, isOdd, isNegative');
  // verifica se o valor é impar
  if (idade.isOdd) {
    print('Valor ODD');
  }


  print('A classe double possui vários metodos úteis como arredondamento');
  final valorDouble = 10.755;
  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorString = '30a';

  print('Conversão de string para número');
  print('O parse pode retornar uma exceção caso não consiga resolver');
  // final valorInt = int.parse(valorString);

  print('O tryParse retorna null caso não consiga converter.');
  final valorInt = int.tryParse(valorString);
  if (valorInt != null) {
    print(valorInt);
  }


  print('Conversao de double para String com arredondamento, método toStringAsFixed');
  final precoCamiseta = 30.27876;
  print(precoCamiseta);
  print(precoCamiseta.toStringAsFixed(2));

}
