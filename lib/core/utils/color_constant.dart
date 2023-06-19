import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color gray5001 = fromHex('#f9f9f9');

  static Color indigo40099 = fromHex('#994475ba');

  static Color black900B3 = fromHex('#b3000000');

  static Color gray5002 = fromHex('#fafafa');

  static Color indigoA20001 = fromHex('#727afd');

  static Color gray5003 = fromHex('#f7f8ff');

  static Color blueGray10066 = fromHex('#66d7d7d7');

  static Color black9003f = fromHex('#3f000000');

  static Color indigo90099 = fromHex('#991f267e');

  static Color black90000 = fromHex('#00000000');

  static Color whiteA70019 = fromHex('#19ffffff');

  static Color cyan40099 = fromHex('#9930c8d8');

  static Color blueGray90001 = fromHex('#333333');

  static Color blueGray900 = fromHex('#132847');

  static Color pink300 = fromHex('#f5698b');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color indigoA20099 = fromHex('#99727afd');

  static Color black9004c = fromHex('#4c000000');

  static Color blueGray100 = fromHex('#d7d7d7');

  static Color blueGray300 = fromHex('#9fabbc');

  static Color blue3008e = fromHex('#8e689afb');

  static Color blueGray500 = fromHex('#607597');

  static Color black9000f = fromHex('#0f000000');

  static Color cyan4007e = fromHex('#7e30c8d8');

  static Color black9000c = fromHex('#0c000000');

  static Color pink30099 = fromHex('#99f5698b');

  static Color indigo400 = fromHex('#4475ba');

  static Color deepOrangeA10099 = fromHex('#99f9a775');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color indigo90001 = fromHex('#1f267e');

  static Color indigo90002 = fromHex('#1c267d');

  static Color black90019 = fromHex('#19000000');

  static Color cyan600 = fromHex('#19a7ce');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo800 = fromHex('#1c4089');

  static Color cyan400 = fromHex('#21aad0');

  static Color blueGray50 = fromHex('#ebedef');

  static Color blueGray10001 = fromHex('#d1d1d1');

  static Color indigoA200 = fromHex('#6a72ec');

  static Color gray50 = fromHex('#f9fafc');

  static Color red100 = fromHex('#ffd7d7');

  static Color blueGray20001 = fromHex('#a8b1bd');

  static Color indigo90033 = fromHex('#331c267d');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color blueGray20003 = fromHex('#a3b1c2');

  static Color blueGray20002 = fromHex('#bac4d0');

  static Color black900 = fromHex('#000000');

  static Color gray5033 = fromHex('#33f8f8f8');

  static Color blueGray200 = fromHex('#a9b2bd');

  static Color blueGray400 = fromHex('#888888');

  static Color indigo50 = fromHex('#dfe9f5');

  static Color gray900 = fromHex('#0a0e38');

  static Color lightBlue50 = fromHex('#e6f9ff');

  static Color gray300 = fromHex('#dddfe1');

  static Color gray30001 = fromHex('#dcdee1');

  static Color blue20099 = fromHex('#9994c0fe');

  static Color lightBlue5087 = fromHex('#87e6f9ff');

  static Color whiteA70001 = fromHex('#fefffb');

  static Color indigo80014 = fromHex('#1441387f');

  static Color indigo900 = fromHex('#1d267d');

  static Color lightBlue5001 = fromHex('#e5f9ff');

  static Color cyan700 = fromHex('#1389a9');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
