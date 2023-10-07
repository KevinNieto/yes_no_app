void main() {

  print( greetEveryone() );
  
  print( 'Suma: ${ addTwoNumbers( 10, 20 ) }' );
  
  //Valor de cada variable
  print( greetPerson( name: 'Fernando', message: 'Hi,' ) );
  
}

//Las funciones se declaran fuera del main
String greetEveryoneNormal() {
  return 'Hello everyone!';
 }
//Funciones de Flecha, no lleva el return
String greetEveryone() => 'Hello everyone!';

//Suma de numeros, se deben agregar los tipos de datos
int addTwoNumbers( int a, int b ) => a + b;
//B es opcional y lo iguala a 0 
/*Todlo que esta dentro de []es opcional pero se le 
tiene que establecer un valor para que no sea null*/
int addTwoNumbersOptional( int a, [ int b = 0 ]) {
/*
  ¿B tiene valor? Si no lo tiene ponle 0
   b ??= 0;
*/
  return a + b;
}

//Parametros opcionales y se les asigna nombre
String greetPerson({ required String name, String message = 'Hola,' }) {
  
  return '$message Fernando';
}