void main() {
   final Cuenta persona = Cuenta();
   persona.money = 100;
  
    
}

class Cuenta {
  int _dinero = 159;
  
  int get money => _dinero;
  
  set money(int valor){
    if (money > valor && valor > 0) {
      _dinero = money - valor;
      print('Juego comprado');
    } else {
      print('Fondos insuficientes o cantidad no valida');
    }
  }
  
  
}

