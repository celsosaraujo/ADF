void main() {

    var numeros = List.generate(10, (index) => index + 1 );
    var nomes = ['fulano', 'beltrano','ciclano'];

    //deve-se levar em consideração que a array inicia o indice com 0, por esse motivo, deve ser menor que o tamanho
    print('imprimindo número com for condicional');
    for( var i = 0;i < numeros.length; i ++ ){
      print(numeros[i]);
    }

    print('imprimindo nomes com for condicional');
    for( var i = 0;i < nomes.length; i ++ ){
      print(nomes[i]);
    }
   
    print('imprimindo de números  com for in');
    for (var numero in numeros) {
      print(numero);
    }

    print('imprimindo de nomes  com for in');
    for (var nome in nomes) {
      print(nome);
    }

    print('imprimindo nomes com for condicional com break');
    for( var i = 0;i < nomes.length; i ++ ){
      print(nomes[i]);

      if( nomes[i] == 'beltrano'){
        break;
      }
    }

    print('imprimindo de nomes  com for in com break');
    for (var nome in nomes) {
      print(nome);
      if( nome == 'beltrano'){
        break;
      }
    }

    print('imprimindo nomes com for condicional com continue');
    for( var i = 0;i < nomes.length; i ++ ){
      if( nomes[i] == 'beltrano'){
        continue;
      }
      print(nomes[i]);

    }

    print('imprimindo de nomes  com for in com continue');
    for (var nome in nomes) {
      if( nome == 'beltrano'){
        continue;
      }
      print(nome);
    }

    //for collections com for in
    print('imprimindo Collection For');
    var listaInts = [1,2,3];
    var listaStrings = [
        '#0',
        '#01',
        for(var i in listaInts) '#$i'
    ];
    print(listaStrings);

}