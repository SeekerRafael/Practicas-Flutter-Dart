Future<String> cargarDatos(bool exito) async {
  print('Iniciando carga de datos...');
  await Future.delayed(Duration(seconds: 2));

  if (!exito) {
    throw Exception('Error: No se pudieron cargar los datos');
  }

  return 'Datos cargados correctamente';
}

Future<void> procesoCarga() async {
  try {
    String resultado = await cargarDatos(false); 
    print(resultado);
  } catch (e) {
    print('Ocurrió un error: $e');
  } finally {
    print('Proceso finalizado, recursos liberados');
  }
}

void main() async {
  await procesoCarga();
}

