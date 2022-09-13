import 'package:iaa_project/export.dart';

ThemeData dark = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: ColorResource.black,
  brightness: Brightness.dark,
  hintColor: const Color(0xFFc7c7c7),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF252525)),
);
