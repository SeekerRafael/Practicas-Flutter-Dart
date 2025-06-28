Future<String> obtenerMensaje() async {
  return 'Hola desde el futuro';
}

void main() async {
  String mensaje = await obtenerMensaje();
  print(mensaje); 
}
