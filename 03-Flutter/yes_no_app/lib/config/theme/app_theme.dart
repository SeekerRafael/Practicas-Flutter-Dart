import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(66, 57, 9, 100);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.orangeAccent,
  Colors.tealAccent,
  Colors.pink,

];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert (selectedColor >= 0 && selectedColor <= _colorThemes.length-1, 
          'Solo puedes seleccionar colores desde el 0 al ${_colorThemes.length}');
  

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark,
    );
  }
}

