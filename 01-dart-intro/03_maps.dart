void main(){
  //MAPS: Son como los JSON value paired
 final Map <String,dynamic>pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'habilities' : <String>['impostor'],
    'sprites' : <int, String>{
      1: 'ditto/front.png' ,
      2: 'ditto/back.png'
     }
  

  };

  //Imprime todo el arreglo
  print(pokemon);
  print('sprites: ${pokemon['sprites']}');
  
  //Para extraer subvalores
  print('Front: ${pokemon['sprites'][1]}');
  print('Back: ${pokemon['sprites'][2]}');




}