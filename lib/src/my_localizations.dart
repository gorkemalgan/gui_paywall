// Dart imports:
import 'dart:ui';

Locale get locale => PlatformDispatcher.instance.locale;
String get langName {
  // For chinese, we need to differentiate between simplified and traditional
  if (locale.languageCode == "zh" && locale.scriptCode != null) {
    if (locale.scriptCode == "Hans" || locale.scriptCode == "Hant") {
      return '${locale.languageCode}-${locale.scriptCode}';
    }
  }
  return locale.languageCode;
}

String parseLocalized(Map<String, dynamic> data) => data[langName] ?? data.values.firstOrNull ?? "";

const Map<String, String> localeLanguageNames = {
  "ar": "العربية", // Arabic
  "ca": "Català", // Catalan
  "cs": "Čeština", // Czech
  "da": "Dansk", // Danish
  "de": "Deutsch", // German
  "el": "Ελληνικά", // Greek
  "en": "English", // English
  "es": "Español", // Spanish
  "fi": "Suomi", // Finnish
  "fr": "Français", // French
  "hi": "हिन्दी", // Hindi
  "hr": "Hrvatski", // Croatian
  "hu": "Magyar", // Hungarian
  "id": "Bahasa Indonesia", // Indonesian
  "it": "Italiano", // Italian
  "ja": "日本語", // Japanese
  "ko": "한국어", // Korean
  "ms": "Bahasa Melayu", // Malay
  "nl": "Nederlands", // Dutch
  "no": "Norsk", // Norwegian
  "pl": "Polski", // Polish
  "pt": "Português", // Portuguese
  "ro": "Română", // Romanian
  "ru": "Русский", // Russian
  "sk": "Slovenčina", // Slovak
  "sv": "Svenska", // Swedish
  "tr": "Türkçe", // Turkish
  "uk": "Українська", // Ukrainian
  "vi": "Tiếng Việt", // Vietnamese
  "zh": "中文", // Chinese
  "zh_Hans": "简体中文", // Chinese (Simplified)
  "zh_Hant": "繁體中文", // Chinese (Traditional)
};
String? get localizationMap => localeLanguageNames[locale.languageCode];
