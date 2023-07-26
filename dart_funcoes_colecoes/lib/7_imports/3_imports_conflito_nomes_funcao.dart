//posso realizar os imports de mais de um pacote. E dentro desses pacotes podem existur funções com o mesmo nome
//para rescolver esse problem pode ser utilizado um alias

import 'operacoes_matematicas/soma.dart' as soma;
import 'package:dart_funcoes_colecoes/7_imports/operacoes_matematicas_nova/soma.dart'
    as nova_soma;

void main(List<String> args) {
  print('''//posso realizar os imports de mais de um pacote. 
  E dentro desses pacotes podem existur funções com o mesmo nome''');
  print('//para rescolver esse problem pode ser utilizado um alias');
  print('Total de Soma: ${soma.somaDoubles(5.1, 6.25)}');
  print('Total de Nova Soma: ${nova_soma.somaDoubles(5.1, 6.25)}');
}
