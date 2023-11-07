import 'package:teno_datetime/src/initialization.dart';
import 'package:teno_datetime/teno_datetime.dart';
import 'package:test/test.dart';

main() {
  group('diff', () {
    final testData = [
      (
        a: DateTime(2023, 11, 7),
        b: DateTime(2023, 11, 1),
        unit: Unit.day,
        expected: 6
      ),
      (
        a: DateTime(2023, 11, 7, 11, 06, 20),
        b: DateTime(2023, 11, 1, 03, 02, 11),
        unit: Unit.day,
        expected: 6
      ),
      (
        a: DateTime(2023, 11, 7, 11, 06, 20),
        b: DateTime(2023, 11, 1, 03, 02, 11),
        unit: Unit.week,
        expected: 0
      )
    ];

    for (var data in testData) {
      test('Number of ${data.unit} of diffing ${data.a} to ${data.b}', () {
        expect(data.a.diff(data.b, unit: data.unit), data.expected);
      });
    }
  });

  group('startOf -- monday is start of week', () {
    final testData = [
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.microsecond,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 123, 789)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.millisecond,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 123)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.second,
        expected: DateTime(2023, 11, 7, 22, 44, 55)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.minute,
        expected: DateTime(2023, 11, 7, 22, 44)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.hour,
        expected: DateTime(2023, 11, 7, 22)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.day,
        expected: DateTime(2023, 11, 7)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.week,
        expected: DateTime(2023, 11, 6)
      ),
      (
        value: DateTime(2023, 11, 3, 22, 44, 55, 123, 789),
        unit: Unit.week,
        expected: DateTime(2023, 10, 30)
      ),
      (
        value: DateTime(2023, 11, 6, 22, 44, 55, 123, 789),
        unit: Unit.week,
        expected: DateTime(2023, 11, 6)
      ),
    ];

    setUpAll(() {
      firstDayOfWeek = DateTime.monday;
    });

    for (var data in testData) {
      test('Start of ${data.unit} of ${data.value}', () {
        expect(data.value.startOf(data.unit), data.expected);
      });
    }
  });

  group('startOf -- sunday is start of week', () {
    final testData = [
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.microsecond,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 123, 789)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.millisecond,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 123)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.second,
        expected: DateTime(2023, 11, 7, 22, 44, 55)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.minute,
        expected: DateTime(2023, 11, 7, 22, 44)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.hour,
        expected: DateTime(2023, 11, 7, 22)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55),
        unit: Unit.day,
        expected: DateTime(2023, 11, 7)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55),
        unit: Unit.week,
        expected: DateTime(2023, 11, 5)
      ),
      (
        value: DateTime(2023, 11, 3, 22, 44, 55),
        unit: Unit.week,
        expected: DateTime(2023, 10, 29)
      ),
      (
        value: DateTime(2023, 11, 5, 22, 44, 55),
        unit: Unit.week,
        expected: DateTime(2023, 11, 5)
      ),
    ];

    setUpAll(() {
      firstDayOfWeek = DateTime.sunday;
    });

    for (var data in testData) {
      test('Start of ${data.unit} of ${data.value}', () {
        expect(data.value.startOf(data.unit), data.expected);
      });
    }
  });
}
