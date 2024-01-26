import 'package:flutter_base_project/localization/languages/bangla_language.dart';
import 'package:flutter_base_project/localization/languages/english_language.dart';
import 'package:get/get.dart';

class LanguageTranslator extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {'en_US': englishLanguage, 'bn_BD': banglaLanguage};
}
