import 'dart:ui';

class L10n {
  static final all = {
    const Locale('th'),
    const Locale('en'),
  };

  static String getFlag(String code) {
    switch (code) {
      case 'en':
        return '🇺🇸';
      case 'th':
      default:
        return '🇹🇭';
    }
  }

  static String getLanguageShortText(String code) {
    switch (code) {
      case 'en':
        return 'US';
      case 'th':
      default:
        return 'TH';
    }
  }

 /* static String getLanguageText(String code) {
    switch (code) {
      case 'en':
        return Localization.instance.txtLanguageEnglish;
      case 'th':
      default:
        return Localization.instance.txtLanguageThai;
    }
  }*/

  static String getSystemLanguageText(String code) {
    switch (code) {
      case 'th':
        return 'ตามการตั้งค่าอุปกรณ์';
      default:
        return 'System';
    }
  }
}