void main() {
  var funcaoSoma = soma;

  funcaoSoma(10,10);

  var funcaoX = (int x, int y){
    return x+y;
  };

  print(funcaoX(10,10));
}

int soma(int x, int y) {
  return x + y;
}