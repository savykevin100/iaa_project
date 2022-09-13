import 'package:iaa_project/export.dart';

ThemeData light = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: ColorResource.kPrimaryColor,
  brightness: Brightness.light,
  appBarTheme: appBarThemeLight(),
  iconTheme: const IconThemeData(color: ColorResource.kPrimaryColor),
  backgroundColor: ColorResource.backgroundScaffoldColor,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
);

AppBarTheme appBarThemeLight() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: ColorResource.kPrimaryColor),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}
