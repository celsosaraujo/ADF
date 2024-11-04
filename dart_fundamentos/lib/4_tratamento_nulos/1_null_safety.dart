// Para variável de nível superior ou atributos a opção de promoção de nulo para não nulo
// esse recurso só funciona para variáveis locais.
String? nomeNivelSuperior;

void main() {

   String nome = '';
   // Quando declaro uma variável precisa iniciá-la para utilizar os métodos.
   nome.isEmpty;

   String? nomeNula; 
   //Caso contrário incluo o ? para determinar que a variável pode ser nula,
   //No entando ainda continuará apresentando o erro.
   /*
   nomeNula.isEmpty;
   */

   //Para contornar o problema, posso utilizar uma técnica de promoção de variável nula 
   //para não nula. Atribuinte o valor
   String? nomeNulaAtribuicao; 
   
   nomeNulaAtribuicao = ''; 
   nomeNulaAtribuicao.isEmpty;

   // Ou, faz um teste antes de utilizar a variável
   String? nomeNulaTeste;        
   nomeNulaTeste!.isEmpty;

   if( nomeNulaTeste != null ){
       nomeNulaTeste.isEmpty;
   }

    //para utilizar, mesmo iniciado, tenho que utilizar o ! assuminto aresponsabilidade 
    //sobre o tratamento das exceções
    nomeNivelSuperior = '';
    nomeNivelSuperior!.isEmpty;
}
