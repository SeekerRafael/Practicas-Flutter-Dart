bool esPar(int n) => n % 2 == 0;


void main() {
  saludar();
  print(saludar());
  
  int numero = 4;

  if (esPar(numero)) {
    print('$numero es par');
  } else {
    print('$numero es impar');
  }
  
  int suma = sumarNumeros(5, 8);
  print(suma);
  
  int sumaOpcional = sumarNumerosOpcional2(5);
  print(sumaOpcional);
}

String saludar() {
  return 'Hola Rafita';
}

int sumarNumeros(int a, int b) => a + b;

int sumarNumerosOpcional(int a, int? b) {
  // b = b ?? 0;
  b ??= 0;
  return a = b;
}


int sumarNumerosOpcional2(int a, [int b = 0]) {
  
  return a + b;
}


