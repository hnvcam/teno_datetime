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

  group('endOf -- monday is start of week', () {
    final testData = [
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.microsecond,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 123, 789)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.millisecond,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 123, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.second,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.minute,
        expected: DateTime(2023, 11, 7, 22, 44, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.hour,
        expected: DateTime(2023, 11, 7, 22, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.day,
        expected: DateTime(2023, 11, 7, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.week,
        expected: DateTime(2023, 11, 12, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 10, 30, 22, 44, 55, 123, 789),
        unit: Unit.week,
        expected: DateTime(2023, 11, 5, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 5, 22, 44, 55, 123, 789),
        unit: Unit.week,
        expected: DateTime(2023, 11, 5, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 5, 22, 44, 55, 123, 789),
        unit: Unit.month,
        expected: DateTime(2023, 11, 30, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 12, 5, 22, 44, 55, 123, 789),
        unit: Unit.month,
        expected: DateTime(2023, 12, 31, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 2, 5, 22, 44, 55, 123, 789),
        unit: Unit.month,
        expected: DateTime(2023, 2, 28, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2024, 2, 5, 22, 44, 55, 123, 789),
        unit: Unit.month,
        expected: DateTime(2024, 2, 29, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2024, 3, 5, 22, 44, 55, 123, 789),
        unit: Unit.month,
        expected: DateTime(2024, 3, 31, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2024, 4, 5, 22, 44, 55, 123, 789),
        unit: Unit.month,
        expected: DateTime(2024, 4, 30, 23, 59, 59, 999, 999)
      ),
    ];

    setUpAll(() {
      firstDayOfWeek = DateTime.monday;
    });

    for (var data in testData) {
      test('End of ${data.unit} of ${data.value}', () {
        expect(data.value.endOf(data.unit), data.expected);
      });
    }
  });

  group('endOf -- sunday is start of week', () {
    final testData = [
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.microsecond,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 123, 789)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.millisecond,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 123, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.second,
        expected: DateTime(2023, 11, 7, 22, 44, 55, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.minute,
        expected: DateTime(2023, 11, 7, 22, 44, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.hour,
        expected: DateTime(2023, 11, 7, 22, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55, 123, 789),
        unit: Unit.day,
        expected: DateTime(2023, 11, 7, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 7, 22, 44, 55),
        unit: Unit.week,
        expected: DateTime(2023, 11, 11, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 10, 30, 22, 44, 55),
        unit: Unit.week,
        expected: DateTime(2023, 11, 04, 23, 59, 59, 999, 999)
      ),
      (
        value: DateTime(2023, 11, 4, 22, 44, 55),
        unit: Unit.week,
        expected: DateTime(2023, 11, 4, 23, 59, 59, 999, 999)
      ),
    ];

    setUpAll(() {
      firstDayOfWeek = DateTime.sunday;
    });

    for (var data in testData) {
      test('End of ${data.unit} of ${data.value}', () {
        expect(data.value.endOf(data.unit), data.expected);
      });
    }
  });

  group('Override firstDayOfWeek on call', () {
    setUpAll(() {
      firstDayOfWeek = DateTime.monday;
    });

    test('StartOf - Week - override with same value', () {
      final time = DateTime(2023, 11, 13, 10, 37, 05, 678, 123);
      expect(time.startOf(Unit.week, DateTime.monday), DateTime(2023, 11, 13));
    });

    test('StartOf - Week - override with different value', () {
      final time = DateTime(2023, 11, 13, 10, 37, 05, 678, 123);
      expect(time.startOf(Unit.week, DateTime.sunday), DateTime(2023, 11, 12));
    });

    test('EndOf - Week - override with same value', () {
      final time = DateTime(2023, 11, 13, 10, 37, 05, 678, 123);
      expect(time.endOf(Unit.week, DateTime.monday),
          DateTime(2023, 11, 19, 23, 59, 59, 999, 999));
    });

    test('EndOf - Week - override with different value', () {
      final time = DateTime(2023, 11, 13, 10, 37, 05, 678, 123);
      expect(time.endOf(Unit.week, DateTime.sunday),
          DateTime(2023, 11, 18, 23, 59, 59, 999, 999));
    });
  });

  group('addUnit', () {
    final time = DateTime(2023, 10, 30, 10, 34, 5, 123, 768);
    test('Adding for 1 second is correct', () {
      expect(time.addUnit(seconds: 1).difference(time), Duration(seconds: 1));
    });
    test('Adding for 1 days 2 minutes is correct', () {
      expect(time.addUnit(days: 1, minutes: 2).difference(time),
          Duration(days: 1, minutes: 2));
    });
    test('Adding for 1 week 2 microseconds is correct', () {
      expect(time.addUnit(weeks: 1, microseconds: 2).difference(time),
          Duration(days: 7, microseconds: 2));
    });
  });
}
