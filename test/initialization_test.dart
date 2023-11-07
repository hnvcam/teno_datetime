import 'package:teno_datetime/src/initialization.dart';
import 'package:test/test.dart';

main() {
  final testData = [
    (locale: 'en', firstDay: DateTime.sunday),
    (locale: 'en_US', firstDay: DateTime.sunday),
    (locale: 'de', firstDay: DateTime.monday),
    (locale: 'pt', firstDay: DateTime.sunday),
    (locale: 'es', firstDay: DateTime.monday),
    (locale: 'vi', firstDay: DateTime.monday),
    (locale: 'ar', firstDay: DateTime.saturday)
  ];

  for (var data in testData) {
    test('First day of week was set correctly for ${data.locale}', () {
      ensureLocaleInit(data.locale);
      expect(firstDayOfWeek, data.firstDay);
    });
  }
}
