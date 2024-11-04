import 'dart:convert';
import 'package:http/http.dart' as http;
import 'endereco.dart';

class EnderecoController {
  Future<Endereco> buscarEndereco(String cep) async {
    final url = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    final resposta = await http.get(url);

    if (resposta.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(resposta.body);
      return Endereco.fromJson(json);
    } else {
      throw Exception("Erro ao buscar endereço: ${resposta.statusCode}");      
    }
  }
}
