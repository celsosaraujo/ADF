void main() {
  var mapaDeProdutos = <String, String>{};
  print('\n//método putIfAbsent - adiciona um chaves exclusivas no mapa');
  mapaDeProdutos.putIfAbsent('xbacon', () => 'X-TUDO');
  mapaDeProdutos.putIfAbsent('xbacon', () => 'X-SALADA');
  print(mapaDeProdutos);

  print('//só adiciona itens exclusivos');
  mapaDeProdutos.putIfAbsent('xbacon', () => 'X-SALADA');
  print(mapaDeProdutos);

  print(
      '\n//método update - altera o valor de um item no mapa com base na chave');
  mapaDeProdutos.update('xbacon', (value) => 'X-BACON');
  print(mapaDeProdutos);

  print(
      '/n dá erro em tempo de execução caso tente atualizar uma chave inexistente');
  //mapaDeProdutos.update('xsalada', (value) => 'X-SALADA');
  print(mapaDeProdutos);

  print('\n recuperar valores do mapa');
  print('Produto: ${mapaDeProdutos['xbacon']}');

  print('\n atualizar uma chave que não existe');
  mapaDeProdutos.update('xsalada', (value) => 'X-SALADA',
      ifAbsent: () => 'X-SALADA');
  print(mapaDeProdutos);

  print('\n método foreach - não pode ser utilizado para acesso assincrono');
  mapaDeProdutos.forEach((key, value) {
    print('chave: $key Valor: $value');
  });

  print(
      '\n utilizando o for in para percorrer o mapa - deve ser utilizado para acesso assincro');
  for (var entrada in mapaDeProdutos.entries) {
    print('chave: ${entrada.key} Valor: ${entrada.value}');
  }

  print('//percorrendo todas as chaves');
  for (var chave in mapaDeProdutos.keys) {
    print('chave: $chave Valor: ${mapaDeProdutos[chave]}');
  }
  print('//percorrendo todas os valores');
  for (var valor in mapaDeProdutos.values) {
    print('Valor: $valor');
  }

  print('\n//utilizando o método map, deve semre retornar uma chave e um valor, um MapEntry');
  var mapaProdutosCaixaBaixa = mapaDeProdutos.map((key, value) {
    return MapEntry(key, value.toLowerCase());
  });
  print(mapaProdutosCaixaBaixa);

   print('\n// Utilização de um mapa aninhado');
  var mapaAninhado = <String, Object>{
    'nome': "Escola de DART",
    'cursos':[
      {
        'nome': 'DART',
        'descricao': 'Fundamentos da linguagem DART'
      },
      {
        'nome': 'Flutter',
        'descricao': 'Fundamentos da linguagem Flutter'
      }
    ]
  };
  print(mapaAninhado);

   print('//Adicionando um novo curso na Escola DART');
   (mapaAninhado['cursos'] as List).add({
    'nome': 'DART Avançado',
    'descricao': 'Curso com técnicas avançadas de dart',
  });
  print(mapaAninhado);

   print('//Adicionando uma nova escola');
   mapaAninhado.putIfAbsent('escolafrontend', () => 
   {
       'nome': 'Escola de FrontEnd',
      'cursos': [
        {
          'nome': 'HTML', 
          'descricao': 'Curso básico de HTML'
        },
        { 'nome': 'JavaScript', 
           'descricao': 'Curso básico de JavaScript'
        }
      ]
    } );
    print(mapaAninhado);

  

}
