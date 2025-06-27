enum TipoFigura {
  rectangulo,
  circulo,
  triangulo,
}

abstract class Figura {
  String color;
  TipoFigura tipo;

  Figura(this.color, this.tipo);

  double calcularArea(); 

  void imprimirInfo() {
    print('Tipo: $tipo, Color: $color');
  }
}

class Rectangulo extends Figura {
  double ancho;
  double alto;

  Rectangulo({
    required this.ancho,
    required this.alto,
    required String color,
  }) : super(color, TipoFigura.rectangulo);

  @override
  double calcularArea() => ancho * alto;
}

void main() {
  Rectangulo r = Rectangulo(ancho: 4, alto: 6, color: 'verde');

  r.imprimirInfo();                      
  print('Área: ${r.calcularArea()}');   
}
