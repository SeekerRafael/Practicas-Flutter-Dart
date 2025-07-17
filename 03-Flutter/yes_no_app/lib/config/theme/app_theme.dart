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
  Colors.green,
  Colors.cyan,
  Colors.indigo,
  Colors.deepPurple,
  Colors.lightGreen,
  Color.fromARGB(255, 255, 140, 0), // deep orange
  Color.fromARGB(255, 0, 188, 212), // cyan accent
  Color.fromARGB(255, 156, 39, 176), // purple
  Color.fromARGB(255, 63, 81, 181), // indigo
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(
          selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
          'Solo puedes seleccionar colores desde el 0 al ${_colorThemes.length - 1}',
        );

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
