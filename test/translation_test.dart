import 'package:teno_datetime/teno_datetime.dart';
import 'package:test/test.dart';

main() {
  final testData = [
    (locale: 'en', in2Days: 'in 2 days', inAMonth: 'in a month', threeWeeksAgo: '3 weeks ago'),
    (locale: 'es', in2Days: 'en 2 días', inAMonth: 'en un mes', threeWeeksAgo: 'hace 3 semanas'),
    (locale: 'fr', in2Days: 'dans 2 jours', inAMonth: 'dans un mois', threeWeeksAgo: 'il y a 3 semaines'),
    (locale: 'de', in2Days: 'in 2 Tagen', inAMonth: 'in einem Monat', threeWeeksAgo: 'vor 3 Wochen'),
    (locale: 'pt', in2Days: 'em 2 dias', inAMonth: 'em um mês', threeWeeksAgo: 'há 3 semanas'),
    (locale: 'vi', in2Days: 'sau 2 ngày', inAMonth: 'trong tháng sau', threeWeeksAgo: '3 tuần trước')
  ];

  for (final data in testData) {
    test('Translation to ${data.locale}', () async {
      await ensureLocaleInit(data.locale);
      expect(DateTime.now().addUnit(days: 2, seconds: 1).fromNow, data.in2Days);
      expect(DateTime.now().addUnit(days: 32).fromNow, data.inAMonth);
      expect(DateTime.now().addUnit(weeks: -3).fromNow, data.threeWeeksAgo);
    });
  }
}