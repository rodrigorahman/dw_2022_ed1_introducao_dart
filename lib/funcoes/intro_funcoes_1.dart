void main() {
  final soma = somaInteiros(10, 10);
  final somaDynamic = somaInteirosDynamic(10, 10);

  print(soma);
  print(somaDynamic);

  print(somaDynamic is int);

  valor();
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

somaInteirosDynamic(numero1, numero2) {
  return numero1 + numero2;
}

void valor(){
  print('Chamado o valor');
}