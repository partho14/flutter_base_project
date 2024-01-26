import 'dart:ui';
import 'package:flutter_base_project/features/common/data/repositories/settings_repository.dart';
import 'package:flutter_base_project/features/common/presentation/utils/language_enum.dart';
import 'package:get/get.dart';


class LanguageController extends GetxController {
  final SettingsRepository _settingsRepository;

  Languages _currentSelectedLanguage = Languages.en;

  LanguageController(this._settingsRepository);

  Languages get selectedLanguage => _currentSelectedLanguage;

  void changeLanguage(Languages language) async {
    _currentSelectedLanguage = language;

    switch (language) {
      case Languages.en:
        Get.updateLocale(const Locale('en', 'US'));
        break;
      case Languages.bn:
        Get.updateLocale(const Locale('bn', 'BD'));
        break;
    }
    await _saveLanguage(language);
  }

  Future<void> _saveLanguage(Languages language) async {
    await _settingsRepository.saveLanguage(language.name);
  }

  Future<void> setLastSelectedLanguage() async {
    final String value = await _settingsRepository.getLanguage();
    _currentSelectedLanguage = getLanguageFromString(value);
    Get.updateLocale(Locale(value));
  }
}