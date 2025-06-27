abstract class Figura {
  double calcularArea();
  double calcularPerimetro();
}

class Cuadrado implements Figura {
  double lado;

  Cuadrado(this.lado);

  @override
  double calcularArea() => lado * lado;

  @override
  double calcularPerimetro() => lado * 4;
}
