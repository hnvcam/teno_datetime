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
}
