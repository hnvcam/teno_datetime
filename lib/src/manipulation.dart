import 'constants.dart';
import 'get_set.dart';
import 'initialization.dart';
import 'query.dart';

extension Diff on DateTime {
  /// This is a convenient usage of [DateTime.difference]
  int diff(DateTime other, {Unit unit = Unit.millisecond}) {
    return difference(other).to(unit);
  }
}

extension StartOf on DateTime {
  /// Find the start of time (for ex: [Unit.week])
  /// For startOf([Unit.week]), it is calculated based on [firstDayOfWeek] value
  DateTime startOf(Unit unit) {
    switch (unit) {
      case Unit.millisecond:
        return copyWith(microsecond: 0);
      case Unit.second:
        return copyWith(microsecond: 0, millisecond: 0);
      case Unit.minute:
        return copyWith(microsecond: 0, millisecond: 0, second: 0);
      case Unit.hour:
        return copyWith(microsecond: 0, millisecond: 0, second: 0, minute: 0);
      case Unit.day:
        return copyWith(
            microsecond: 0, millisecond: 0, second: 0, minute: 0, hour: 0);
      case Unit.week:
        if (weekday >= firstDayOfWeek) {
          return copyWith(
              microsecond: 0,
              millisecond: 0,
              second: 0,
              minute: 0,
              hour: 0,
              day: day - weekday + firstDayOfWeek);
        } else {
          return copyWith(
              microsecond: 0,
              millisecond: 0,
              second: 0,
              minute: 0,
              hour: 0,
              day: day - 7 - weekday + firstDayOfWeek);
        }
      case Unit.month:
        return copyWith(
            microsecond: 0,
            millisecond: 0,
            second: 0,
            minute: 0,
            hour: 0,
            day: 1);
      case Unit.year:
        return copyWith(
            microsecond: 0,
            millisecond: 0,
            second: 0,
            minute: 0,
            hour: 0,
            day: 1,
            month: 1);
      default:
        return this;
    }
  }
}

extension EndOf on DateTime {
  /// Find the end of time (for ex: [Unit.week])
  /// For endOf([Unit.week]), it is calculated based on [firstDayOfWeek] value
  /// For endOf([Unit.month]), it does cover for leap year, for ex: 29 of [DateTime.february] of leap year.
  /// Reference: [isLeapYear]
  DateTime endOf(Unit unit) {
    switch (unit) {
      case Unit.millisecond:
        return copyWith(microsecond: 999);
      case Unit.second:
        return copyWith(microsecond: 999, millisecond: 999);
      case Unit.minute:
        return copyWith(microsecond: 999, millisecond: 999, second: 59);
      case Unit.hour:
        return copyWith(
            microsecond: 999, millisecond: 999, second: 59, minute: 59);
      case Unit.day:
        return copyWith(
            microsecond: 999,
            millisecond: 999,
            second: 59,
            minute: 59,
            hour: 23);
      case Unit.week:
        if (weekday >= firstDayOfWeek) {
          return add(Duration(
                  days: DateTime.daysPerWeek - weekday + firstDayOfWeek - 1))
              .copyWith(
                  microsecond: 999,
                  millisecond: 999,
                  second: 59,
                  minute: 59,
                  hour: 23);
        } else {
          return add(Duration(days: firstDayOfWeek - weekday - 1)).copyWith(
              microsecond: 999,
              millisecond: 999,
              second: 59,
              minute: 59,
              hour: 23);
        }
      case Unit.month:
        int endDate = genericMonthDayCount[month]!;
        if (isLeapYear) {
          endDate++;
        }
        return copyWith(
            microsecond: 999,
            millisecond: 999,
            second: 59,
            minute: 59,
            hour: 23,
            day: endDate);
      case Unit.year:
        return copyWith(
            microsecond: 999,
            millisecond: 999,
            second: 59,
            minute: 59,
            hour: 23,
            day: 31,
            month: 12);
      default:
        return this;
    }
  }
}

extension Adding on DateTime {
  /// This is a convenience usage of [DateTime.add]([Duration])
  DateTime addUnit(
      {int microseconds = 0,
      int milliseconds = 0,
      int seconds = 0,
      int minutes = 0,
      int hours = 0,
      int days = 0,
      int weeks = 0}) {
    final duration = Duration(
        microseconds: microseconds,
        milliseconds: milliseconds,
        seconds: seconds,
        minutes: minutes,
        hours: hours,
        days: days + weeks * 7);
    return add(duration);
  }
}
