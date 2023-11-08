import 'package:teno_datetime/teno_datetime.dart';
import 'package:test/test.dart';

main() {
  group('isLeapYear', () {
    final testData = [
      (time: DateTime(2013, 1, 1), expected: false),
      (time: DateTime(2012, 12, 1), expected: true),
      (time: DateTime(2024, 1, 1), expected: true)
    ];

    for (var data in testData) {
      test('${data.time} ${data.expected ? 'is' : 'is not'} leap year', () {
        expect(data.time.isLeapYear, data.expected);
      });
    }
  });

  group('isSame', () {
    final testData = [
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.microsecond,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.second,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.minute,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.hour,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.day,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 10, 08, 10, 23, 57, 12, 5),
        unit: Unit.day,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.year,
        expected: true
      )
    ];

    for (var data in testData) {
      test(
          '${data.a} ${data.expected ? 'is same as' : 'is NOT same as'} ${data.b} by ${data.unit}',
          () {
        expect(data.a.isSameUnit(data.b, unit: data.unit), data.expected);
      });
    }
  });

  group('isBefore', () {
    final testData = [
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.microsecond,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.second,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.minute,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.hour,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.day,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 10, 08, 10, 23, 57, 12, 5),
        unit: Unit.day,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.year,
        expected: false
      )
    ];

    for (var data in testData) {
      test(
          '${data.a} ${data.expected ? 'is before' : 'is NOT before'} ${data.b} by ${data.unit}',
          () {
        expect(data.a.isBeforeUnit(data.b, unit: data.unit), data.expected);
      });
    }
  });

  /// !!! This test is run with reserved order, means comparing b to a.
  group('isAfter', () {
    final testData = [
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.microsecond,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.second,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.minute,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.hour,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.day,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 10, 08, 10, 23, 57, 12, 5),
        unit: Unit.day,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.year,
        expected: false
      )
    ];

    for (var data in testData) {
      test(
          '${data.b} ${data.expected ? 'is after' : 'is NOT after'} ${data.a} by ${data.unit}',
          () {
        expect(data.b.isAfterUnit(data.a, unit: data.unit), data.expected);
      });
    }
  });

  test("isSameOrBeforeUnit", () {
    final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
    expect(
        time.isSameOrBeforeUnit(DateTime(2023, 11, 08), unit: Unit.day), true);
  });

  test("isSameOrAfterUnit", () {
    final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
    expect(
        time.isSameOrAfterUnit(DateTime(2023, 11, 08), unit: Unit.day), true);
  });

  test("isInRange", () {
    final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
    expect(time.isInRange(DateTime(2023, 11, 08), DateTime(2023, 11, 08, 19)),
        false);
    expect(
        time.isInRange(DateTime(2023, 11, 08), DateTime(2023, 11, 08, 19),
            unit: Unit.day),
        true);
  });

  test("isInRangeExclusive", () {
    final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
    expect(
        time.isInRangeExclusive(
            DateTime(2023, 11, 08), DateTime(2023, 11, 08, 21)),
        true);
    expect(
        time.isInRangeExclusive(time, DateTime(2023, 11, 08, 21),
            unit: Unit.day),
        false);
  });
}
