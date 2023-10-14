import 'package:flutter/material.dart';

//Para que Flutter reconozca el color primero hay que agregar un 0xFF antes del color
const Color _customColor = Color(0xFFC11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

//El guion bajo (_) sirve para hacer privados los atributos
class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }) : assert(
        selectedColor >= 0&& selectedColor <= _colorThemes.length-1, 
        'Colors must be between 0 and ${_colorThemes.length}');
//Los asserts son errores controlados
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorThemes[selectedColor],
        //brightness: Brightness.dark//Para poner el modo oscuro    
        );     
  }
}
