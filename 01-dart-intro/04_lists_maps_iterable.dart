void main() {
  //Aqui se llaman listas pero son arrays
 
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  print('List Original $numbers');
  print('List Length ${numbers.length}');
  print('List Valor Cualquiera ${numbers[5]}');
  //Si existe lo usa
  print('List Inicial ${numbers.first}');
  print('List Final ${numbers.last}');
  print('List Invertido ${numbers.reversed}');

   //Iterable: Es un elemento que se puede leer de manera secuencial
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  //Regresa a una lista el Iterable
  print('List: ${ reversedNumbers.toList() }');
  //SET:Listado con valores unicos, borra los duplicados
  print('Set: ${ reversedNumbers.toSet() }');
  //Quita los valores repetidos y los vuelve una lista
  print('List Length ${numbers.toSet().toList()}');

  //Numeros mayores que 5
  final numbersGreaterThan5 = numbers.where( (int num) {
    return num > 5; // true
  });

  print('>5 iterable: $numbersGreaterThan5');
  print('>5 Set: ${ numbersGreaterThan5.toSet() }');
}