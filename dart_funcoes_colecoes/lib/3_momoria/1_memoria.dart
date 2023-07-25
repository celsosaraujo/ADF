void main(List<String> args) {
  var listaNomes = ['fulano'];
  print(listaNomes);

  print("//passagem de parâmetro por referência incluiNome(listaNomes, 'beltrano')");
  print("//a lista sempre é passado por referência')");
  print("Identidicação ()hascode) do objeto antes de incluir: ${listaNomes.hashCode}");
  incluiNome(listaNomes, 'beltrano');
  print(listaNomes);


}

void incluiNome(List<String> listaNomes, String nome){
  print("Identidicação ()hascode) do objeto dentro da função incluir: ${listaNomes.hashCode}");
  listaNomes.add(nome);
}