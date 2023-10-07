void main() {
  
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };
    
final ironman = Hero.fromJson( rawJson );
  
   final ironman = Hero(
     isAlive: false,
     power: 'Money',
     name: 'Tony Stark'
   );
  
  
  print( ironman );
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  

  /**CONSTRUCTOR PRINCIPAL */
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //Vienen siendo como validaciones dinamicas para que no truene
  //Mas que todo para recibir JSONs por que dart es Ksensitive, 
  Hero.fromJson( Map<String,dynamic> json ) 
     : name = json['name'] ?? 'No name found',
       power = json['power'] ?? 'No power found',
       isAlive = json['isAlive'] ?? 'No isAlive found';

//LO QUE IMPRIME LA FUNCION
  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'YES!':'Nope' }';
  }




}