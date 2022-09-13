import 'package:iaa_project/export.dart';

class LanguageController extends GetxController {
  final List localeLanguages = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'FRENCH', 'locale': const Locale('fr', 'FR')},
  ];
  updateLanguage(Locale locale) {
    if (Get.deviceLocale == const Locale('en', 'US')) {
      Get.updateLocale(const Locale('fr', 'FR'));
    } else {
      Get.updateLocale(const Locale('en', 'US'));
    }
  }
}
