import 'dart:ui' as ui;


import '../../export.dart';

class ColorResource {
  ColorResource._();

  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);
  static const Color grey = Color(0xffF1F1F1);
  static const Color red = Color(0xFFD32F2F);
  static const Color green = Color(0xff23cb60);
  static const Color yellow = Color(0xFFFFAA47);

  static const kPrimaryColor = Color(0xFFA904F1);
  static const purpleGrey = Color(0xffcca9dd);
  static const kSecondaryColor = Color(0xff09a0de);
  static const categoryImageBackground = Color(0xFFF7E5FF);
  static const categoryMaxBudgetColor = Color(0xFFFF005C);

  static var backgroundScaffoldColor = const Color(0xFFE5E5E5);
  static ui.Gradient iconGradient = ui.Gradient.linear(
      const Offset(4.0, 24.0), const Offset(24.0, 4.0), [kPrimaryColor, black]);
}
