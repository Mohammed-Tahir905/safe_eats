import 'package:flutter/material.dart';

Color green = const Color(0xff96D6A4);
Color white = const Color(0xffFFFFFF);
Color black = const Color(0xff040404);
Color ngreen= const Color(0xff39ff14);
Color grey=const Color(0xffF8F9FA);
Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red;
  }
  return green;
}