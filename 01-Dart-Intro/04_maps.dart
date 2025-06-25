void main() {
  
  final Map<String, dynamic> kansasChiefs = {
    'nombre': 'Kansas City',
    'campeonatos': 4,
    'competitivo': true,
    'jugadores': <num, String>{
      10: 'Pacheco',
      15: 'Hahomes',
      87: 'Kelce'
    }
  };
  
  print('Nombre del jugador es ${ kansasChiefs['jugadores'][10] }');
  print('Nombre del jugador es ${ kansasChiefs['jugadores'][87] }');
  print('Nombre del jugador es ${ kansasChiefs['jugadores'][15] }');
  
}
