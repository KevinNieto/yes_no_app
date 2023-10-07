void main() async {
  
  print('Inicio del programa');
  
  try {
    
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( value );
    
  } catch (err) {
    print('Tenemos un error: $err');
  }
  
  
  print('Fin del programa');
}


Future<String> httpGet( String url ) async {
  //El await espera que se realice la peticion
  await Future.delayed( const Duration(seconds: 1));
  
  throw 'Error en la petición';
  
//   return 'Tenemos un valor de la petición';
  
}