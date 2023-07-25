void main() {
  final nome = "Fulano de Tal";

  var subStringNome = nome.substring(7);
  print(subStringNome);

  var subStringnome2 = nome.substring(0, 7);
  print(subStringnome2);

  var sexo = 'MASCULINO';

  var sexoSigla = sexo.substring(0, 1);
  if (sexoSigla == 'M') {
    print('Sexo Masculino');
  }

  if (sexo.startsWith('Mas')) {
    print('Sexo Masculino');
  }

  if (sexo.toLowerCase().startsWith('mas')) {
    print('Sexo Masculino');
  }

  if (sexo.toUpperCase().startsWith('MAS')) {
    print('Sexo Masculino');
  }

  if (nome.toUpperCase().contains('TAL')) {
    print('É da famílial Tal');
  }

  //Interpolação de string

  var primeiroNome = 'Fulano';
  var segundoNome = 'de Tal';

  var saudacao = 'Olá ' + primeiroNome + ' ' + segundoNome + ' seja bem vindo';
  print(saudacao);

  var saudacaoInterpolacao = 'Olá $primeiroNome $segundoNome seja bem vindo';
  print(saudacaoInterpolacao);

  var saudacaoInterpolacaoComfuncao =
      'Olá ${primeiroNome.toUpperCase()} ${segundoNome.toUpperCase()} seja bem vindo';
  print(saudacaoInterpolacaoComfuncao);

  var paciente = 'Fulano de Tal|30 anos|Brasileiro';
  var nomePaciente = paciente.substring(0, 13);
  print(nomePaciente);
  var idadePaciente = paciente.substring(14, 21);
  print(idadePaciente);

  var dadosPaciente = paciente.split('|');
  //imprimeindo com for in
  for (var dado in dadosPaciente) {
    print(dado);
  }
  //imprimindo com o mpetodo forEach e função simples
  dadosPaciente.forEach((dado) => print(dado));

  //imprimindo com o mpetodo forEach e chamando apenas o método
  dadosPaciente.forEach(print);

  var pacientes = [
    'Fulano de Tal|30 anos|Brasileiro',
    'Siclano de Tal|36 anos|japones'
  ];

  // Imprime o nome completo
  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    print(dadosPaciente[0]);
  }    
  
  // imprime o último nome
  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var nomeCompleto = dadosPaciente[0].split(' ');
    print(nomeCompleto.last);
  }  
}
