void main() {
  final Grafica gtx1060 = Grafica(nombre: 'Gtx 1060', sirve: true, vram: 6);
  
  final Map<String, dynamic> peticionHttp = {
    'name': '1050 ti',
    'vram': 0,
    'sirvee': false
  };
  
  final gtx = Grafica.fromJson(peticionHttp);
  print(gtx);
  print(gtx1060);
}

class Grafica {
  String nombre;
  int vram;
  bool sirve;
  
  Grafica({
    required this.nombre,
    required this.vram,
    required this.sirve
  });
  
  Grafica.fromJson( Map<String, dynamic> jsoon)
    : nombre = jsoon['name'] ?? 'No encontramos el nombre',
      vram = jsoon['vram'] ?? 'No encontramos vram',
      sirve = jsoon['sirvee'] ?? 'No sabemos';
  
  
  @override
  String toString() {
    return 'La grafica $nombre de $vram vram ${sirve ? 'si' : 'no'} funciona';
  }
  
}
  
