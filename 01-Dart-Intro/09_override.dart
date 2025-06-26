void main() {
  final Telefono samsung = Telefono(marca: 'Samsung', precio: 19999, color: 'azul');
  
  print(samsung);
  print(samsung.precio);
}

class Telefono {
  String marca;
  String color;
  int precio;
  
  Telefono({
    required this.marca,
    this.color = 'gris',
    required this.precio
  });
  
  @override
  String toString(){
    return 'La marca es $marca y su precio es $precio';
  }
  
  
}
