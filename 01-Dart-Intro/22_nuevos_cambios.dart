// 🔸 Extension como wrapper normal (ya que extension type aún es preview)
extension UserIdExtension on int {
  String toHex() => toRadixString(16);
}

// 🔸 Función que devuelve un record con nombre y edad
(String, int)? getUserData(int? id) {
  if (id == null) return null;

  final name = switch (id) {
    > 100 => 'Rafael',
    > 50 => 'Lucía',
    _ => 'Desconocido'
  };

  final age = id % 2 == 0 ? 28 : 35;

  return (name, age);
}

// 🔸 Función que clasifica edad
String getEdadTipo(int edad) {
  switch (edad) {
    case < 13:
      return 'Niño';
    case >= 13 && < 20:
      return 'Adolescente';
    case >= 20 && < 65:
      return 'Adulto';
    case >= 65:
      return 'Mayor';
    default:
      return 'Desconocido';
  }
}

// 🔸 MAIN
void main() {
  final List<int?> rawIds = [101, 52, null, 1, 200];

  final usuarios = <Map<String, dynamic>>[];

  for (final id in rawIds) {
    final data = getUserData(id);
    if (data != null) {
      final (nombre, edad) = data;
      usuarios.add({
        'id': id!,
        'nombre': nombre,
        'edad': edad,
        'tipo': getEdadTipo(edad),
      });
    }
  }

  // 🔸 Separadores numéricos
  const int poblacionGlobal = 8_100_000_000;

  // 🔸 Output
  print('🌍 Usuarios registrados (${usuarios.length} de ${rawIds.length}):\n');

  for (final usuario in usuarios) {
    final idHex = (usuario['id'] as int).toHex();
    print(
        '- ${usuario['nombre']} (Edad: ${usuario['edad']}, Tipo: ${usuario['tipo']}, ID: 0x$idHex)');
  }

  print('\n🌐 Población global estimada: $poblacionGlobal');
}
