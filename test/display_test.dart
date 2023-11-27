import 'package:intl/intl.dart';
import 'package:teno_datetime/teno_datetime.dart';
import 'package:test/test.dart';

main() {
  group('timeAgo', () {
    final testData = [
      (
        time: DateTime.now().subtract(Duration(seconds: 20)),
        expected: 'just now'
      ),
      (
        time: DateTime.now().subtract(Duration(seconds: 60)),
        expected: 'a minute ago'
      ),
      (
        time: DateTime.now().subtract(Duration(seconds: 90)),
        expected: 'a minute ago'
      ),
      (
        time: DateTime.now().subtract(Duration(minutes: 2)),
        expected: '2 minutes ago'
      ),
      (
        time: DateTime.now().subtract(Duration(minutes: 60)),
        expected: 'an hour ago'
      ),
      (
        time: DateTime.now().subtract(Duration(minutes: 70)),
        expected: 'an hour ago'
      ),
      (
        time:
            DateTime.now().subtract(Duration(hours: 5, minutes: 3, seconds: 2)),
        expected: '5 hours ago'
      ),
      (
        time: DateTime.now()
            .subtract(Duration(hours: 24, minutes: 3, seconds: 2)),
        expected: 'a day ago'
      ),
      (
        time: DateTime.now()
            .subtract(Duration(hours: 26, minutes: 3, seconds: 2)),
        expected: 'a day ago'
      ),
      (
        time: DateTime.now()
            .subtract(Duration(days: 2, hours: 14, minutes: 3, seconds: 2)),
        expected: '2 days ago'
      ),
      (
        time: DateTime.now().subtract(Duration(days: 30)),
        expected: 'a month ago'
      ),
      (
        time: DateTime.now()
            .subtract(Duration(days: 31, hours: 24, minutes: 3, seconds: 2)),
        expected: 'a month ago'
      ),
      (
        time: DateTime.now()
            .subtract(Duration(days: 60, hours: 24, minutes: 3, seconds: 2)),
        expected: '2 months ago'
      ),
      (
        time: DateTime.now().subtract(Duration(days: 365)),
        expected: 'a year ago'
      ),
      (
        time: DateTime.now()
            .subtract(Duration(days: 730, hours: 24, minutes: 3, seconds: 2)),
        expected: '2 years ago'
      )
    ];

    for (var data in testData) {
      test('timeAgo is display correctly for ${data.time}', () {
        expect(data.time.timeAgo, data.expected);
      });
    }
  });

  group('timeIn', () {
    final testData = [
      (
        time: DateTime.now().add(Duration(seconds: 20)),
        expected: 'in less than a minute'
      ),
      (
        // this could introduce the flaky test, if the time this test runs is further than
        // 999 milliseconds since the time it is created
        time: DateTime.now().add(Duration(seconds: 60, milliseconds: 999)),
        expected: 'in a minute'
      ),
      (
        time: DateTime.now().add(Duration(seconds: 90)),
        expected: 'in a minute'
      ),
      (
        time: DateTime.now().add(Duration(minutes: 2, seconds: 2)),
        expected: 'in 2 minutes'
      ),
      (
        time: DateTime.now().add(Duration(minutes: 60, seconds: 22)),
        expected: 'in an hour'
      ),
      (time: DateTime.now().add(Duration(minutes: 70)), expected: 'in an hour'),
      (
        time: DateTime.now().add(Duration(hours: 5, minutes: 3, seconds: 2)),
        expected: 'in 5 hours'
      ),
      (
        time: DateTime.now().add(Duration(hours: 24, minutes: 3, seconds: 2)),
        expected: 'in a day'
      ),
      (
        time: DateTime.now().add(Duration(hours: 26, minutes: 3, seconds: 2)),
        expected: 'in a day'
      ),
      (
        time: DateTime.now()
            .add(Duration(days: 2, hours: 14, minutes: 3, seconds: 2)),
        expected: 'in 2 days'
      ),
      (
        time: DateTime.now().add(Duration(days: 30, seconds: 10)),
        expected: 'in a month'
      ),
      (
        time: DateTime.now()
            .add(Duration(days: 31, hours: 24, minutes: 3, seconds: 2)),
        expected: 'in a month'
      ),
      (
        time: DateTime.now()
            .add(Duration(days: 60, hours: 24, minutes: 3, seconds: 2)),
        expected: 'in 2 months'
      ),
      (time: DateTime.now().add(Duration(days: 365)), expected: 'in a year'),
      (
        time: DateTime.now()
            .add(Duration(days: 730, hours: 24, minutes: 3, seconds: 2)),
        expected: 'in 2 years'
      )
    ];

    for (var data in testData) {
      test('timeIn is display correctly for ${data.time}', () {
        expect(data.time.timeIn, data.expected);
      });
    }
  });

  group('fromNow', () {
    test('Time in past', () {
      final time = DateTime.now().addUnit(hours: -1);
      expect(time.fromNow, 'an hour ago');
    });

    test('Time in future', () {
      final time = DateTime.now().addUnit(hours: 1, minutes: 1);
      expect(time.fromNow, 'in an hour');
    });
  });

  group('format', () {
    final testData = [
      (
        time: DateTime(2023, 11, 08, 11, 0, 0, 123, 678),
        format: DateFormat.YEAR_MONTH_DAY,
        expected: 'November 8, 2023'
      ),
      (
        time: DateTime(2023, 11, 08, 11, 0, 0, 123, 678),
        format: DateFormat.ABBR_MONTH,
        expected: 'Nov'
      ),
      (
        time: DateTime(2023, 11, 08, 11, 0, 0, 123, 678),
        format: DateFormat.ABBR_WEEKDAY,
        expected: 'Wed'
      )
    ];

    for (var data in testData) {
      test('${data.time} is formatted with ${data.format} correctly', () {
        expect(data.time.format(data.format), data.expected);
      });
    }
  });

  group('toDurationString', () {
    final testData = [
      (
        duration: Duration(seconds: 0),
        unit: Unit.second,
        expected: 'zero seconds'
      ),
      (
        duration: Duration(seconds: 1),
        unit: Unit.second,
        expected: 'one second'
      ),
      (
        duration: Duration(seconds: 5),
        unit: Unit.second,
        expected: '5 seconds'
      ),
      (
        duration: Duration(seconds: 0),
        unit: Unit.minute,
        expected: 'zero minutes'
      ),
      (
        duration: Duration(seconds: 15),
        unit: Unit.minute,
        expected: 'zero minutes'
      ),
      (
        duration: Duration(seconds: 30),
        unit: Unit.minute,
        expected: 'one minute'
      ),
      (
        duration: Duration(seconds: 60),
        unit: Unit.minute,
        expected: 'one minute'
      ),
      (
        duration: Duration(seconds: 90),
        unit: Unit.minute,
        expected: '2 minutes'
      ),
      (
        duration: Duration(seconds: 350),
        unit: Unit.minute,
        expected: '6 minutes'
      ),
      (
        duration: Duration(minutes: 0),
        unit: Unit.minute,
        expected: 'zero minutes'
      ),
      (
        duration: Duration(minutes: 1),
        unit: Unit.minute,
        expected: 'one minute'
      ),
      (
        duration: Duration(minutes: 15),
        unit: Unit.minute,
        expected: '15 minutes'
      ),
      (
        duration: Duration(minutes: 15),
        unit: Unit.hour,
        expected: 'zero hours'
      ),
      (duration: Duration(minutes: 60), unit: Unit.hour, expected: 'one hour'),
      (duration: Duration(minutes: 99), unit: Unit.hour, expected: '2 hours'),
      (duration: Duration(hours: 0), unit: Unit.hour, expected: 'zero hours'),
      (duration: Duration(hours: 1), unit: Unit.hour, expected: 'one hour'),
      (duration: Duration(hours: 12), unit: Unit.day, expected: 'a day'),
      (duration: Duration(hours: 24), unit: Unit.day, expected: 'a day'),
      (duration: Duration(hours: 32), unit: Unit.day, expected: 'a day'),
      (duration: Duration(days: 0), unit: Unit.day, expected: 'zero days'),
      (duration: Duration(days: 1), unit: Unit.day, expected: 'a day'),
      (duration: Duration(days: 10), unit: Unit.day, expected: '10 days'),
      (duration: Duration(days: 3), unit: Unit.week, expected: 'zero weeks'),
      (duration: Duration(days: 4), unit: Unit.week, expected: 'a week'),
      (duration: Duration(days: 30), unit: Unit.month, expected: 'a month'),
      (duration: Duration(days: 366), unit: Unit.year, expected: 'a year'),
      (duration: Duration(seconds: 0), unit: null, expected: 'zero seconds'),
      (duration: Duration(seconds: 100), unit: null, expected: '2 minutes'),
      (duration: Duration(minutes: 4), unit: null, expected: '4 minutes'),
      (duration: Duration(minutes: 64), unit: null, expected: 'one hour'),
      (duration: Duration(days: 4), unit: null, expected: '4 days'),
      (duration: Duration(days: 29), unit: null, expected: '4 weeks'),
      (duration: Duration(days: 60), unit: null, expected: '2 months'),
      (duration: Duration(days: 10), unit: null, expected: 'a week'),
      (duration: Duration(days: 100), unit: null, expected: '3 months'),
      (duration: Duration(days: 365), unit: null, expected: 'a year'),
      (duration: Duration(days: 600), unit: null, expected: '2 years'),
    ];

    for (var data in testData) {
      test(
          '${data.duration} toDurationString(${data.unit}) => ${data.expected}',
          () {
        expect(data.duration.toDurationString(data.unit), data.expected);
      });
    }
  });
}
