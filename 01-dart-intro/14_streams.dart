void main() {
  
  emitNumbers().listen( (value) {
     print('Stream value: $value');
  });
  
  
} 

//Se declara el tipo de dato a imprimir
Stream<int> emitNumbers() {
  
  return Stream.periodic( const Duration(seconds: 1), (value){
//     print('desde periodic $value');
    return value;
  }).take(5);
  
}