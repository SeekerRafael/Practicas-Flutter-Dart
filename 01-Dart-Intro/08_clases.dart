void main() {
 
  final Equipo toluca = Equipo('Toluca', 12, 'Mexico');
  
  print(toluca.nombre);
  print(toluca.titulos);
  print(toluca.ubicacion);
  
  final Nfl americana = Nfl('Americana', 'Ravens', 'Mahomes' );
  
  print(americana.conferencia);
  print(americana.mejorEquipo);
  print(americana.mejorJugador);
  
}


class Equipo {
  String nombre;
  int titulos;
  String ubicacion;
   
  Equipo (String pNombre, int pTitulos, String pUbicacion) 
    : nombre = pNombre,
      titulos = pTitulos,
      ubicacion = pUbicacion;
  
  
    
}


class Nfl{
  String conferencia;
  String mejorEquipo;
  String mejorJugador;
  
  Nfl( this.conferencia, this.mejorEquipo, this.mejorJugador);
  
}





