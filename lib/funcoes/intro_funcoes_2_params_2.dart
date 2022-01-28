void main() {
  somaInteiros(10, 10);
  somaInteirosOpcional(10);
  print(somaInteirosOpcionalDefault());

  somaInteirosNomeados(numero1: 10, numero2: 10);
  somaInteirosNomeados(numero2: 10, numero1: 10);

  somaInteirosNomeadosObrigatorios(numero1: 10, numero2: 10);

  somax(null);
  somay();
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

int somaInteirosOpcional([int? numero1, int? numero2]) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }

  return 0;
}

int somaInteirosOpcionalDefault([int numero1 = 10, int numero2 = 10]) {
  return numero1 + numero2;
}

int somaInteirosNomeados({int? numero1, int? numero2}) {
  return 10;//numero1 + numero2;
}


int somaInteirosNomeadosObrigatorios({required int numero1, required int numero2}) {
  return 10;//numero1 + numero2;
}

void misturando(int numero, [String? nome]){}
void misturando2(int numero, {String? nome}){}
void misturando3(int numero,int numero2, {String? nome, String? nome2}){}

void somax(int? numero){}
void somay([int? numero]){}