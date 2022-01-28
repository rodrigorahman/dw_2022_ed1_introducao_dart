import 'dart:convert';

import 'package:http/http.dart';

void main() {
  // print('Comecou');
  // get(Uri.parse('https://viacep.com.breqewq/ws/01001000/json/'))
  //   .then((value){
  //     print('Terminou de buscar');
  //   }).catchError((error) {
  //     print('DEU RUIM');
  //   })
  // ;
  // print('Terminou');

  buscarCEP();
}

Future<void> buscarCEP() async {
  try {
    print('Comecou buscarCEP');
    final result = await get(Uri.parse('https://viacep.com.br/ws/01001000/json/'));

    print(result.body);
    var cep = jsonDecode(result.body);
    print(cep['cep']);
    print(cep['logradouro']);

    print('Termionou a Busca');
    print('Terminou buscarCEP');
    return cep['cep'];
  } catch (e) {
    print('DEU RUIM');
  }
}