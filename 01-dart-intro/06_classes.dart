//El 95% de flutter son clases

void main() {
  
  final Hero wolverine = Hero(name: 'Logan',power: 'Regeneración');
  
  print( wolverine );
  print( wolverine.name );
  print( wolverine.power );
  
}

/*Las clases se pueden ver como un molde.
 Todas las propiedades */
class Hero {
  
  String name;
  String power;
  

  /*Constructor: Es la funcion que se va a llamar 
  cuando inicializo mi instancia*/

  //*Cuando los ponemos entre llaves decimos que son obligatorios
  Hero({ 
    //Que sea requerido el nombre
    required this.name, 
    //El valr por defecto seria Sin Poder
             this.power = 'Sin poder'
  });
  
//   Hero( String pName, String pPower )
//      : name = pName,
//        power = pPower;
  
  //**NO ES OBLIGATORIO PONERLO, PERO ES BUENA PRACTICA*/
  /*Cambia el Instance  of 'NombreFuncion' por algo en especifico */
  //*Va dentro de la funcion
  @override
  String toString() {
    return '$name - $power';
  }

  
}