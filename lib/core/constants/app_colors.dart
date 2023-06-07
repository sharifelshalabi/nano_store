import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  
  static Color primary = fromHex('#2AB3C6');
  
  static Color secondary = fromHex('#188095');

  static Color green = fromHex('#00FF00');
  
  static Color black9007e = fromHex('#7e000000');

  static Color blueGray5005e = fromHex('#5e6b7f99');

  static Color blueGray50 = fromHex('#f1f1f1');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f7f8fa');

  static Color black900D8 = fromHex('#d8000000');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#444a51');

  static Color blueGray900 = fromHex('#08293b');

  static Color gray8005b = fromHex('#5b3c3c43');

  static Color gray400 = fromHex('#bfc2c7');

  static Color black9000a = fromHex('#0a000000');

  static Color whiteA700C1 = fromHex('#c1ffffff');

  static Color blueGray100 = fromHex('#d7d7d7');

  static Color black9004d = fromHex('#4d000000');

  static Color gray500 = fromHex('#979797');

  static Color blueGray400 = fromHex('#828395');

  static Color black9000c = fromHex('#0c000000');

  static Color blueGray80001 = fromHex('#2a3f4b');

  static Color black900A5 = fromHex('#a5000000');

  static Color black90099 = fromHex('#99000000');

  static Color cyan800 = fromHex('#188095');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan400 = fromHex('#2ab3c6');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
