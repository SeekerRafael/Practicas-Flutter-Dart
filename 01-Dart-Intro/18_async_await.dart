Future<int> calcularSuma(int a, int b) async {
  await Future.delayed(Duration(seconds: 1)); 
  return a + b;
}

Future<void> mostrarResultado() async {
  print('Calculando...');
  int resultado = await calcularSuma(5, 7);
  print('El resultado es: $resultado');
}

void main() async {
  await mostrarResultado();
  print('¡Cálculo terminado!');
}

