import 'dart:io';
import 'endereco_controller.dart';
import 'endereco.dart';

void main() async {
  final controller = EnderecoController();

  print("Informe o CEP (formato 00000-000):");
  String? cep = stdin.readLineSync();

  if (cep != null && cep.isNotEmpty) {
    try {
      Endereco endereco = await controller.buscarEndereco(cep);
      print("Logradouro: ${endereco.logradouro}");
      print("Bairro: ${endereco.bairro}");
      print("Cidade: ${endereco.localidade}");
      print("UF: ${endereco.uf}");
    } catch (e) {
      print(e);
    }
  } else {
    print("CEP inválido. Tente novamente.");
  }
}