
abstract class Animal {}

//Como herencias
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

//Niveles de especializacion
mixin Volador {
  void volar() => print("Estoy volando");
}
 
mixin Caminante {
  void caminar() => print("Estoy caminando");
}
 
mixin Nadador {
  void nadar() => print("Estoy nadando");
}
//Se le da atributo por atributo
class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}


void main() {
  
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  
  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
   
}