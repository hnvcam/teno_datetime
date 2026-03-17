import 'package:teno_datetime/teno_datetime.dart';
import 'package:test/test.dart';

void main() {
  group('DurationToUnit', () {
    test('to microsecond', () {
      expect(Duration(seconds: 1).to(Unit.microsecond), 1000000);
      expect(Duration(milliseconds: 1).to(Unit.microsecond), 1000);
      expect(Duration(microseconds: 500).to(Unit.microsecond), 500);
      expect(Duration.zero.to(Unit.microsecond), 0);
    });

    test('to millisecond', () {
      expect(Duration(seconds: 1).to(Unit.millisecond), 1000);
      expect(Duration(milliseconds: 500).to(Unit.millisecond), 500);
      expect(Duration(microseconds: 999).to(Unit.millisecond), 0);
      expect(Duration.zero.to(Unit.millisecond), 0);
    });

    test('to second', () {
      expect(Duration(minutes: 1).to(Unit.second), 60);
      expect(Duration(seconds: 90).to(Unit.second), 90);
      expect(Duration(milliseconds: 999).to(Unit.second), 0);
      expect(Duration.zero.to(Unit.second), 0);
    });

    test('to minute', () {
      expect(Duration(hours: 1).to(Unit.minute), 60);
      expect(Duration(minutes: 90).to(Unit.minute), 90);
      expect(Duration(seconds: 59).to(Unit.minute), 0);
      expect(Duration.zero.to(Unit.minute), 0);
    });

    test('to hour', () {
      expect(Duration(days: 1).to(Unit.hour), 24);
      expect(Duration(hours: 36).to(Unit.hour), 36);
      expect(Duration(minutes: 59).to(Unit.hour), 0);
      expect(Duration.zero.to(Unit.hour), 0);
    });

    test('to day', () {
      expect(Duration(days: 7).to(Unit.day), 7);
      expect(Duration(hours: 25).to(Unit.day), 1);
      expect(Duration(hours: 23).to(Unit.day), 0);
      expect(Duration.zero.to(Unit.day), 0);
    });

    test('to week', () {
      expect(Duration(days: 1).to(Unit.week), 0);
      expect(Duration(days: 7).to(Unit.week), 1);
      expect(Duration(days: 13).to(Unit.week), 1);
      expect(Duration(days: 14, hours: 20, minutes: 1).to(Unit.week), 2);
    });

    test('to month', () {
      expect(Duration(days: 29).to(Unit.month), 0);
      expect(Duration(days: 30).to(Unit.month), 1);
      expect(Duration(days: 60).to(Unit.month), 2);
      expect(Duration(days: 365).to(Unit.month), 12);
    });

    test('to year', () {
      expect(Duration(days: 364).to(Unit.year), 0);
      expect(Duration(days: 365).to(Unit.year), 1);
      expect(Duration(days: 730).to(Unit.year), 2);
    });
  });
}
