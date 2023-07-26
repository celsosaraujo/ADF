void main() {
  var idade = '30 anos';
  String? nome;
  
  //int.parse(idade);
  
  print('\n//Utilize try{}catch(e) para realizar o tratamento de exceções');
  try{
    print('Daqui a 10 anos você terá ${int.parse(idade) + 10} anos.');
  }catch(e){
    print('Imprimindo o erro retornado: $e');
  }
  
  print('\n//Dentro de um try podemos ter várias operações que retoram erros');
  print('//Os erros possíveies de prever, poderá apresentar mensagens específicas');
  print('//Sintaxe: on NomeExcption catch(e){}');
  idade = '30';
  try{
    print('Daqui a 10 anos você terá ${int.parse(idade) + 10} anos.');
    print('Nome em minúsculo ${nome!.toLowerCase()}');
  }on FormatException catch(e){
    print("Idade não está no formato de número");
  }catch(e){
    print('Imprimindo o erro retornado: $e');
  }
  
  print('\n//No tratamento de exceção além do try e catch, tem o finally.');
  print('//Sintaxe: try{}on Exception(e){}catch(e){}finally{}');
  print('//Independente se ocorrer erro ou não, o finally sempre será executado');
  nome = 'Fulano de Tal';
  try{
    print('Daqui a 10 anos você terá ${int.parse(idade) + 10} anos.');
    print('Nome em minúsculo ${nome!.toLowerCase()}');
  }on FormatException catch(e){
    print("Idade não está no formato de número");
  }catch(e){
    print('Imprimindo o erro retornado: $e');
  }finally{
    print('O finally sempre é executado!');
  }
  
  print('\n//Além de apresentar o nome da exeção, é possível apresentar o StackTrace');
  print('//Stack trace demonstra a pilha de execução, facilita a localização do bug');
  idade = '30 anos';
  try{
    print('Daqui a 10 anos você terá ${int.parse(idade) + 10} anos.');
    print('Nome em minúsculo ${nome!.toLowerCase()}');
  }on FormatException catch(e, s){
    print("Idade não está no formato de número");
    print('Stack trace $s');
  }catch(e){
    print('Imprimindo o erro retornado: $e');
  }finally{
    print('O finally sempre é executado!');
  }

  print('\n//Se não for utilizar o parâmetro (e)-Error ou  (s)-Stack Trace do catch');
  print('//não precisa declarar o cath(e,s) sobre as exeções específicas');
  try{
    print('Daqui a 10 anos você terá ${int.parse(idade) + 10} anos.');
    print('Nome em minúsculo ${nome!.toLowerCase()}');
  }on FormatException{
    print("Idade não está no formato de número");    
  }on NoSuchMethodError{
    print('Método executado é inválido');
  }catch(e){
    print('Imprimindo o erro retornado: $e');
  }finally{
    print('O finally sempre é executado!');
  }

  print('\n//através do comando throw podemos lançar uma exceção');
  idade = '15';
  nome = 'Fulano de Tal';
  try{
    
    int idadeConvertida = int.parse(idade);
    print('Daqui a 10 anos você terá ${idadeConvertida + 10} anos.');
    print('Nome em minúsculo ${nome!.toLowerCase()}');
    
    if( idadeConvertida < 18 ){
      throw Exception();  
    }    
    
  }on FormatException{
    print("Idade não está no formato de número");    
  }on NoSuchMethodError{
    print('Método executado é inválido');
  }catch(e){
    print('Imprimindo o erro retornado: $e');
  }finally{
    print('O finally sempre é executado!');
  }
    
    
    
}