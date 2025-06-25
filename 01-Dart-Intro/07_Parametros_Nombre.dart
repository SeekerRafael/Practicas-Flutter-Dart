void main() {
 
  int sumaOpcional = sumarNumerosOpcional2(5);
  print(sumaOpcional);
  
  saludo('Rafita');
  
  print(mensajeRequerido(name: 'Rafael', message: 'Holaaaa'));
  
  print(mensajeRequerido2(name: 'Bris'));
    
}


int sumarNumerosOpcional(int a, int? b) {
  // b = b ?? 0;
  b ??= 0;
  return a + b;
}


int sumarNumerosOpcional2(int a, [int b = 0]) {
  
  return a + b;
}

void saludo(String nombre) {
  print('Hola $nombre');
}


String mensajeRequerido({required String name, String? message}) {
  return '$message de parte de $name';
}


String mensajeRequerido2({required String name, String message = 'Hola'}) {
  return '$message de parte de $name';
}


