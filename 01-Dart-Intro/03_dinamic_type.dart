void main() {
  final String dragonBall = 'Vegeta';
  final int precio = 390;
  final bool? esVerdadero = null; // Corregido aquí
  final List<String> lista = ['Rafita', 'Bris'];

  dynamic variable = true;
  variable = [12, 289, 27];
  variable = 'hola';
  variable = null;
  variable = () => true;
  variable = 29;

  print("""
  $dragonBall
  """);
}
