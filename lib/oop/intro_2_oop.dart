void main() {
  var camiseta = Camiseta();
  camiseta.tamanho = 'M';
  camiseta.marca = 'Academia do Flutter';
  camiseta.cor = 'Preta';
  camiseta.modelo = 'Gola careca';

  print('A cor da camiseta é ${camiseta.cor}');
  print('O tipo de lavagem da camiseta é ${camiseta.tipoDeLavagem()}');
}

class Camiseta {
  // caracteristicas
  String? _cor;
  String? tamanho;
  String? marca;
  String? modelo;

  // comportamentos
  set cor(String? cor) {
    if(cor == 'Preta'){
      _cor = cor;
    }
    _cor = 'AZUL';
  } 

  String? get cor {
    return _cor;
  }


  String tipoDeLavagem() {
    if (marca == 'Academia do Flutter') {
      return 'Pode lavar na maquina';
    } else {
      return 'Não pode lavar na maquina';
    }
  }
}
