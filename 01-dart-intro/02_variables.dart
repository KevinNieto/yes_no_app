void main(){
  //Recomienda siempre ponerle final a la variable y solo quitarla si es necesario cambiarle el valor
 final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> habilities = ['impostor'];
  final sprites =  ['ditto/font.png','ditto/back.png'];
  
  //Tipo de dato dinamic: puede ser cualquier tipo de dato incluso null
  dynamic errorMessage = 'Hola';
  //dynamic puede ser un bool
  dynamic errorMessage =  true;
  //dynamic puede ser una lista
  dynamic errorMessage = [1,2,3,4,5,6,7];
  //dynamic puede esto que no se que es
  dynamic errorMessage = {1,2,3,4,5,6,7};
  //dynamic puede ser una funcion que retorna true
  dynamic errorMessage = ()=>true;
  //dynamic puede ser null
  dynamic errorMessage = null;


//STRING MULTILINEA EN DART
   print("""
    $pokemon
    $hp
    $isAlive
    $habilities
    $sprites
  """
  );




}