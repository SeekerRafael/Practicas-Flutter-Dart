mixin Camina {
  void caminar() {
    print('Estoy caminando');
  }
}

mixin Nada {
  void nadar() {
    print('Estoy nadando');
  }
}

mixin Vuela {
  void volar() {
    print('Estoy volando');
  }
}

class Perro with Camina, Nada {
  void sonido() {
    print('Guau guau');
  }
}

class Pajaro with Camina, Vuela {
  void sonido() {
    print('Pío pío');
  }
}

class Pez with Nada {
  void sonido() {
    print('Blup blup');
  }
}
void main() {
  final perro = Perro();
  final pajaro = Pajaro();
  final pez = Pez();

  print('--- Perro ---');
  perro.caminar();
  perro.nadar();
  perro.sonido();

  print('--- Pájaro ---');
  pajaro.caminar();
  pajaro.volar();
  pajaro.sonido();

  print('--- Pez ---');
  pez.nadar();
  pez.sonido();
}
