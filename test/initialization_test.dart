import 'package:teno_datetime/teno_datetime.dart';
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
}
