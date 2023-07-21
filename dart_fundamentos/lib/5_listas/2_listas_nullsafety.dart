void main() {
  // ? = nullable (aceita null)
  // sem nada (padrão) + não aceita null

  //Tem que incializar a lista e os itens internos não podem ser nulos
  List<String> nomes = [];

  // Não precisa inicializar a Lista e os itens internos não podem ser nulos
  List<String>? nomesNulos;

//Tem que incializar a lista e os itens internos não podem ser nulos
  List<String?> nomesInternosNaoAceitaNulos = ["Fulano", null];
  var nomesInternosNaoAceitaNulos2 = <String?>["Fulano", null];

  // Não precisa inicializar a Lista e os itens internos podem ser nulos
  List<String?>?  nomesNulosInternosAceitaNulos = null;
  //Não é possível declarar por inferência
  //var  nomesNulosInternosAceitaNulos2 = <String?>?null;


}