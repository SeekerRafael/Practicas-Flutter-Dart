
enum Persona {
  hombre,
  mujer
}

class Message {
  final String text;
  final String? imageUrl;
  final Persona persona;
  final DateTime hora;

  Message( {
    required this.text, 
    this.imageUrl, 
    required this.persona,
    }) : hora = DateTime.now();                         
}


