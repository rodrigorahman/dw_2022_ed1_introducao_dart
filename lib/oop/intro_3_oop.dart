void main() {
  var camiseta = Camiseta('Preta', 'M', 'Academia do Flutter', 'Gola careca');
  var camisetaSemCor =
      Camiseta.semCor('M', 'Academia do Flutter', 'Gola careca');
  var camisetaSemOpcional = Camiseta.parametrosOpcionais(
      'M', 'Academia do Flutter', 'Gola careca', 'PRETA');
  var camisetaParametrosNomeados = Camiseta.parametrosNomeados(
      marca: 'Academia do Flutter', modelo: 'Gola careca', tamanho: 'M');

  var camisetaParametrosNomeadosPrivado = Camiseta.parametrosNomeadosPrivado(
      marca: 'Academia do Flutter',
      modelo: 'Gola careca',
      tamanho: 'M',
      cor: 'PRETA');

  print('A cor da camiseta é ${camiseta.cor}');
  print('O tipo de lavagem da camiseta é ${camiseta.tipoDeLavagem()}');
}

class Camiseta {
  // caracteristicas
  String _cor;
  String tamanho;
  String marca;
  String modelo;

  // Camiseta(String cor, String tamanho, String marca, String modelo) :
  //   _cor = cor,
  //   this.tamanho = tamanho,
  //   this.marca = marca,
  //   this.modelo = modelo;

  Camiseta(this._cor, this.tamanho, this.marca, this.modelo);
  Camiseta.semCor(this.tamanho, this.marca, this.modelo) : _cor = 'PRETA';
  Camiseta.parametrosOpcionais(this.tamanho, this.marca, this.modelo,
      [this._cor = 'PRETA']);
  Camiseta.parametrosNomeados(
      {required this.tamanho, required this.marca, required this.modelo})
      : _cor = 'PRETA';

  Camiseta.parametrosNomeadosPrivado({
    required this.tamanho,
    required this.marca,
    required this.modelo,
    required String cor,
  }) : _cor = cor;

  // comportamentos
  set cor(String cor) {
    if (cor == 'Preta') {
      _cor = cor;
    }
    _cor = 'AZUL';
  }

  String get cor {
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
