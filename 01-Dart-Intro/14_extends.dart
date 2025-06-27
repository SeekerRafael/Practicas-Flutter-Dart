class Vehiculo {
  String marca;
  int anio;

  Vehiculo(this.marca, this.anio);

  void encender() {
    print('El vehículo $marca del año $anio está encendido.');
  }
}

class Auto extends Vehiculo {
  int puertas;

  Auto(String marca, int anio, this.puertas) : super(marca, anio);

  void tocarClaxon() {
    print('¡Beep beep! Soy un auto con $puertas puertas.');
  }
}

class Moto extends Vehiculo {
  bool tieneCasco;

  Moto(String marca, int anio, this.tieneCasco) : super(marca, anio);

  void hacerCaballito() {
    print('¡Estoy haciendo un caballito!');
  }
}

void main() {
  Auto miAuto = Auto('Toyota', 2020, 4);
  miAuto.encender();      
  miAuto.tocarClaxon();   

  Moto miMoto = Moto('Yamaha', 2022, true);
  miMoto.encender();      
  miMoto.hacerCaballito(); 
}


