import 'package:teno_datetime/teno_datetime.dart';
import 'package:test/test.dart';

main() {
  group('Bug in 2024-12', () {
    test('startOf(Unit.week) of first week of year must be correct', () {
      final date = DateTime(2025, 01, 02);
      expect(date.startOf(Unit.week, DateTime.monday), DateTime(2024, 12, 30));
    });
  });
}
