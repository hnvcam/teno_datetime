import 'package:teno_datetime/teno_datetime.dart';
import 'package:test/test.dart';

void main() {
  group('isLeapYear', () {
    final testData = [
      (time: DateTime(2013, 1, 1), expected: false),
      (time: DateTime(2012, 12, 1), expected: true),
      (time: DateTime(2024, 1, 1), expected: true),
      (time: DateTime(1900, 1, 1), expected: false),
      (time: DateTime(2000, 1, 1), expected: true),
      (time: DateTime(2100, 1, 1), expected: false),
      (time: DateTime(2400, 1, 1), expected: true),
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
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 5),
        b: DateTime(2023, 11, 08, 10, 23, 0, 0, 5),
        unit: Unit.microsecond,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 100, 0),
        b: DateTime(2023, 11, 08, 10, 23, 0, 100, 5),
        unit: Unit.millisecond,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 100, 0),
        b: DateTime(2023, 11, 08, 10, 23, 0, 200, 0),
        unit: Unit.millisecond,
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
        a: DateTime(2023, 11, 06),
        b: DateTime(2023, 11, 10),
        unit: Unit.week,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 05),
        b: DateTime(2023, 11, 06),
        unit: Unit.week,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 01),
        b: DateTime(2023, 11, 30),
        unit: Unit.month,
        expected: true
      ),
      (
        a: DateTime(2023, 11, 30),
        b: DateTime(2023, 12, 01),
        unit: Unit.month,
        expected: false
      ),
      (
        a: DateTime(2023, 11, 08, 10, 23, 0, 0, 0),
        b: DateTime(2023, 11, 08, 10, 23, 57, 12, 5),
        unit: Unit.year,
        expected: true
      ),
      (
        a: DateTime(2023, 12, 31),
        b: DateTime(2024, 1, 1),
        unit: Unit.year,
        expected: false
      ),
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

  group('isSameOrBeforeUnit', () {
    final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);

    test('same day returns true', () {
      expect(
          time.isSameOrBeforeUnit(DateTime(2023, 11, 08), unit: Unit.day),
          true);
    });

    test('before by microsecond returns true', () {
      expect(
          time.isSameOrBeforeUnit(DateTime(2023, 11, 08, 20, 10, 20, 123, 790)),
          true);
    });

    test('after by microsecond returns false', () {
      expect(
          time.isSameOrBeforeUnit(DateTime(2023, 11, 08, 20, 10, 20, 123, 788)),
          false);
    });

    test('before by month returns true', () {
      expect(
          time.isSameOrBeforeUnit(DateTime(2023, 12, 01), unit: Unit.month),
          true);
    });
  });

  group('isSameOrAfterUnit', () {
    final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);

    test('same day returns true', () {
      expect(
          time.isSameOrAfterUnit(DateTime(2023, 11, 08), unit: Unit.day),
          true);
    });

    test('after by microsecond returns true', () {
      expect(
          time.isSameOrAfterUnit(DateTime(2023, 11, 08, 20, 10, 20, 123, 788)),
          true);
    });

    test('before by microsecond returns false', () {
      expect(
          time.isSameOrAfterUnit(DateTime(2023, 11, 08, 20, 10, 20, 123, 790)),
          false);
    });

    test('after by month returns true', () {
      expect(
          time.isSameOrAfterUnit(DateTime(2023, 10, 01), unit: Unit.month),
          true);
    });
  });

  group('isInRange', () {
    final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);

    test('outside range by microsecond returns false', () {
      expect(
          time.isInRange(
              DateTime(2023, 11, 08), DateTime(2023, 11, 08, 19)),
          false);
    });

    test('inside range by day returns true', () {
      expect(
          time.isInRange(
              DateTime(2023, 11, 08), DateTime(2023, 11, 08, 19),
              unit: Unit.day),
          true);
    });

    test('on start boundary returns true (inclusive)', () {
      expect(
          time.isInRange(time, DateTime(2023, 11, 09)),
          true);
    });

    test('on end boundary returns true (inclusive)', () {
      expect(
          time.isInRange(DateTime(2023, 11, 07), time),
          true);
    });

    test('outside range before start returns false', () {
      expect(
          time.isInRange(
              DateTime(2023, 11, 09), DateTime(2023, 11, 10)),
          false);
    });

    test('range spanning months by month unit', () {
      expect(
          time.isInRange(
              DateTime(2023, 10, 01), DateTime(2023, 12, 01),
              unit: Unit.month),
          true);
    });
  });

  group('isInRangeExclusive', () {
    final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);

    test('strictly inside range returns true', () {
      expect(
          time.isInRangeExclusive(
              DateTime(2023, 11, 08), DateTime(2023, 11, 08, 21)),
          true);
    });

    test('on start boundary returns false (exclusive)', () {
      expect(
          time.isInRangeExclusive(time, DateTime(2023, 11, 08, 21)),
          false);
    });

    test('on end boundary returns false (exclusive)', () {
      expect(
          time.isInRangeExclusive(DateTime(2023, 11, 08), time),
          false);
    });

    test('same day exclusive by day returns false', () {
      expect(
          time.isInRangeExclusive(time, DateTime(2023, 11, 08, 21),
              unit: Unit.day),
          false);
    });

    test('between different days returns true', () {
      expect(
          time.isInRangeExclusive(
              DateTime(2023, 11, 07), DateTime(2023, 11, 09),
              unit: Unit.day),
          true);
    });
  });

  group('MinMax', () {
    test('Min value', () {
      final a = DateTime(2023, 11, 10, 19, 49, 53, 123, 789);
      final b = DateTime(2023, 11, 10, 19, 50, 0, 123, 789);
      expect(a.orAfterUnit(a), a);
      expect(a.orAfterUnit(a, unit: Unit.day), a);
      expect(a.orAfterUnit(b), a);
      expect(b.orAfterUnit(a), a);
      expect(a.orAfterUnit(b, unit: Unit.minute), a);
      expect(a.orAfterUnit(b, unit: Unit.day), a);
      expect(b.orAfterUnit(a, unit: Unit.day), b);
    });

    test('Max value', () {
      final a = DateTime(2023, 11, 10, 19, 49, 53, 123, 789);
      final b = DateTime(2023, 11, 10, 19, 50, 0, 123, 789);
      expect(a.orBeforeUnit(a), a);
      expect(a.orBeforeUnit(a, unit: Unit.day), a);
      expect(a.orBeforeUnit(b), b);
      expect(b.orBeforeUnit(a), b);
      expect(a.orBeforeUnit(b, unit: Unit.minute), b);
      expect(a.orBeforeUnit(b, unit: Unit.day), a);
      expect(b.orBeforeUnit(a, unit: Unit.day), b);
    });
  });
}
