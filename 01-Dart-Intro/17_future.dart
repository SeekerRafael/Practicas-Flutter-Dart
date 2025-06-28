void main() {
  cargarDatos();
  print('Fin del programa'); 
}

Future<void> cargarDatos() async {
  await Future.delayed(Duration(seconds: 1));
  print('Datos cargados');
}