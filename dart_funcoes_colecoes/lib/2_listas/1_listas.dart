void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  print('\n// Expand');
  print('\n// Array bidmencional'); 
  var lista = [
    [1,2],[3,4]
  ];
  print(lista); 
  print('// Acesso pelo indice - Imprime o item da segunda coluna, da primeira linha '); 
  print(lista[0][1]);

  print('\n//Cria uma nova lista utiliando o operador ... : var listaNova = [... lista[0], ...lista[1]]');
  var listaNova = [... lista[0], ...lista[1]];
  print(listaNova);

  print('\n//O método expand tem a função de criar uma nova lista de forma mais elegante');
  var listaNovaExpand = lista.expand((numeros) => numeros).toList();
  print(listaNovaExpand);

  print('\n// Lista de Busca');
  final listaBuca = ['Fulano','Siclano','Beltrano'];
  print(listaBuca);

  print('\n// método any - verifica se pelo menos um item da lista atende uma condição');
  if( listaBuca.any((nome) => nome.toLowerCase() == 'beltrano') ) {
    print('Existe o nome Beltrano na lista');
  }else{
    print('Não existe o nome Beltrano na lista');
  }
  if( listaBuca.any((nome) => nome.toLowerCase() == 'maria') ) {
    print('Existe o nome Maria na lista');
  }else{
    print('Não existe o nome Maria na lista');
  }

  print('\n// método every - verifica se todos os itens da lista atendem uma condição');
  if( listaBuca.every((nome) => nome.toLowerCase().contains('a')) ) {
    print("Todos os nomes da lista contém a letra 'a'");
  }else{
    print("Nem todos os nomes da lista contém a letra 'a'");
  }
  if( listaBuca.every((nome) => nome.toLowerCase().contains('i')) ) {
    print("Todos os nomes da lista contém a letra 'i'");
  }else{
    print("Nem todos os nomes da lista contém a letra 'i'");
  }

  print('\n// método sorte - para classificar os dados da lista');
  print('\n// classificar números');
  var listaParaOrdenacao = [99,11,2,101,25,55];
  print(listaParaOrdenacao);
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  print('\n// classificar String');
  var listaNomesParaOrdenacao = ['Fulano','Beltrano','Siclano'];
  print(listaNomesParaOrdenacao);
  listaNomesParaOrdenacao.sort();
  print(listaNomesParaOrdenacao);

  final listaPacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  
  print('\n// classificação pelo nome (String)');
  listaPacientes.forEach(print);
  listaPacientes.sort();
  listaPacientes.forEach(print);

  print('\n// classificação pela idade (int) - Implementa o comparable -1 menor valor, 0 igual e 1 maior valor');
  listaPacientes.sort((paciente1,paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if( idadePaciente1 < idadePaciente2 ){
      return -1;
    }else if( idadePaciente1 == idadePaciente2){
      return 0;
    }else{
      return 1;
    }
  });

  listaPacientes.forEach(print);  
  
  print('\n// classificação pela idade (int) - utilizando o metodo CompareTo');
  listaPacientes.sort((paciente1,paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);
/*
    if( idadePaciente1 < idadePaciente2 ){
      return -1;
    }else if( idadePaciente1 == idadePaciente2){
      return 0;
    }else{
      return 1;
    }
    */
    return idadePaciente1.compareTo(idadePaciente2);

  });
  listaPacientes.forEach(print);  
  
  print('\n// classificação pelo estado (String) - utilizando o metodo CompareTo');
  listaPacientes.sort((paciente1,paciente2){
    /*
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    return pacienteDados2[3].compareTo(pacienteDados2[3]);
*/
    return paciente1.split('|')[3].compareTo(paciente2.split('|')[3]);

  });
  listaPacientes.forEach(print);

}

void printAcademia(Object valor){
  print(valor);
}