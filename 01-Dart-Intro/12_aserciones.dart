void main() {
  int edad = 15;

  assert(edad >= 18, 'La edad debe ser mayor o igual a 18');

  print('Edad válida');

  var p1 = Persona(nombre: 'Rafa', edad: 25); 
  var p2 = Persona(nombre: '', edad: -5);     
}


class Persona {
  String nombre;
  int edad;

  Persona({required this.nombre, required this.edad})
      : assert(edad >= 0, 'La edad no puede ser negativa'),
        assert(nombre.isNotEmpty, 'El nombre no puede estar vacío');
}



