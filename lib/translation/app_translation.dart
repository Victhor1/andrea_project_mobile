import 'package:andrea_project_mobile/translation/english_translation.dart';
import 'package:andrea_project_mobile/translation/spanish_translation.dart';
import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': EnglishTranslation.map,
        'es_MX': SpanishTranslation.map,
      };
}
