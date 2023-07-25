void main() {
  print('--------------------------------- DESAFIO FUNDAMENTOS EM DART ---------------------------------');
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  print('Dados dos pacientes:');
  final dadosPacientes = pacientes.map( (paciente) => paciente.split('|')  );
  for( var paciente in dadosPacientes ){
    print(paciente);  
  }

  print('\n// 1 - Pacientes acima de 20 ano');
  print('Pacientes acima de 20 anos:');
  dadosPacientes
      .where((paciente) => int.parse(paciente[1]) > 20)
      .forEach((paciente) => print('Nome: ${paciente[0]} Idade: ${paciente[1]}'));

  print('\n// 2 - Quantidade de pacientes por profissão');
  print('Quantidade de pacientes por profissão:');
  final pacientesDesenvolvedores = dadosPacientes
                                    .where((paciente) => paciente[2] == 'desenvolvedor');
  print( '- Quantidade de Desenvolvedore(s):  ${pacientesDesenvolvedores.length}');

  final pacientesEstudantes = dadosPacientes
                                    .where((paciente) => paciente[2] == 'estudante');
  print( '- Quantidade de Estudante(s):  ${pacientesEstudantes.length}');
 
 
  print( '- Quantidade de Dentista(s):  ${dadosPacientes
    .where((paciente) => paciente[2] == 'dentista')
    .length}');

  print( '- Quantidade de Jornalista(s):  ${dadosPacientes
    .where((paciente) => paciente[2] == 'jornalista')
    .length}');
 
  print('\n**** solução CHATGPT ***');
  final quantidadePorProfissao = <String, int>{};
  for (var paciente in dadosPacientes) {
    var profissao = paciente[2];
    quantidadePorProfissao[profissao] = (quantidadePorProfissao[profissao] ?? 0) + 1;
  }

  print('Quantidade de pacientes por profissão:');
  quantidadePorProfissao.forEach((profissao, quantidade) {
    print('Quantidade de $profissao(s): $quantidade');
  });

  /*
  print('solução BARD');
  final pacientesMap = pacientes
                          .map((paciente) => paciente.split('|'))
                          .map((paciente) => {'nome': paciente[0], 'idade': paciente[1], 'profissao': paciente[2], 'estado': paciente[3]});
  final pacientesPorProfissao = pacientesMap.groupBy((paciente) => paciente['profissao']);
  for (final pacientePorProfissao in pacientesPorProfissao.values) {
    print('Profissão: ${pacientePorProfissao.first} Pacientes: ${pacientePorProfissao.length}');
  }
  */
 print('\N// 3 - Quantidade de pacientes que moram em SP');
  final pacientesSP = dadosPacientes.where((paciente) => paciente[3] == 'SP');
  print('Quantidade de pacientes que moram em SP: ${pacientesSP.length}\n');
}