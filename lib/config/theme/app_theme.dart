import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 68, 29, 130);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.red,

];
  
class AppTheme {

  ThemeData theme(){
    return ThemeData(
      colorSchemeSeed: _colorThemes[1];
    );

  }
}