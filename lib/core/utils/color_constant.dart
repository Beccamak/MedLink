import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#f5faff');

  static Color blueGray90019 = fromHex('#190f264a');

  static Color gray400 = fromHex('#b4b4b4');

  static Color black900B2 = fromHex('#b2000000');

  static Color indigo9000c = fromHex('#0c17396b');

  static Color blueGray300 = fromHex('#919cad');

  static Color blue600 = fromHex('#3498db');

  static Color blueGray500 = fromHex('#69778e');

  static Color yellow9000c = fromHex('#0cef7f2e');

  static Color gray900 = fromHex('#070532');

  static Color gray50 = fromHex('#fafafe');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color black900Cc = fromHex('#cc000000');

  static Color indigo200 = fromHex('#a5bce7');

  static Color black90099 = fromHex('#99000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blueGray700 = fromHex('#384d6d');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
