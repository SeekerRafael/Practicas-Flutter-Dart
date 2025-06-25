void main() {
  
  final number = [1,2,3,4,4,23,43,2,23,2,3,234,];
  
  print(number);
  print(number.length);
  print(number[2]);
  print(number.first);
  print(number.last);
  print(number.reversed);
  
  final reverseNumber = number.reversed;
  print('Iterable: $reverseNumber');
  print('List: ${reverseNumber.toList()}');
  print('List: ${reverseNumber.toSet()}');
  
  
  print(number.toSet().toList());
  
  final numeroMayor5 = number.where( (int i) {
    return i > 5;
  });
  
  print(numeroMayor5);
  print(numeroMayor5.toSet());
  
}


