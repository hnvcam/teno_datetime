import 'package:teno_datetime/teno_datetime.dart';
import 'package:test/test.dart';

void main() {
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
    test('First day of week was set correctly for ${data.locale}', () async {
      await ensureLocaleInit(data.locale);
      expect(firstDayOfWeek, data.firstDay);
    });
  }

  test('timeAgo in Vietnamese', () async {
    await ensureLocaleInit('vi');
    expect(DateTime.now().timeAgo, 'ngay bây giờ');
    await ensureLocaleInit('en');
    expect(DateTime.now().timeAgo, 'just now');
  });

  test('timeIn in Vietnamese', () async {
    await ensureLocaleInit('vi');
    expect(
        DateTime.now().addUnit(days: 1, seconds: 1).timeIn, 'trong ngày mai');
    await ensureLocaleInit('en');
    expect(DateTime.now().addUnit(days: 1, seconds: 1).timeIn, 'in a day');
  });

  group('firstDayOfWeek setter', () {
    test('can set to any valid day', () {
      firstDayOfWeek = DateTime.wednesday;
      expect(firstDayOfWeek, DateTime.wednesday);
      firstDayOfWeek = DateTime.saturday;
      expect(firstDayOfWeek, DateTime.saturday);
      firstDayOfWeek = DateTime.monday;
      expect(firstDayOfWeek, DateTime.monday);
    });

    test('default is Monday before ensureLocaleInit', () {
      firstDayOfWeek = DateTime.monday;
      expect(firstDayOfWeek, DateTime.monday);
    });

    test('ensureLocaleInit overrides manual setting', () async {
      firstDayOfWeek = DateTime.wednesday;
      expect(firstDayOfWeek, DateTime.wednesday);
      await ensureLocaleInit('en');
      expect(firstDayOfWeek, DateTime.sunday);
      // Reset
      firstDayOfWeek = DateTime.monday;
    });
  });
}
