import 'constants.dart';
import 'get_set.dart';
import 'initialization.dart';
import 'query.dart';

extension Diff on DateTime {
  int diff(DateTime other, {Unit unit = Unit.millisecond}) {
    return difference(other).to(unit);
  }
}

extension StartOf on DateTime {
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
                  days: DateTime.daysPerWeek - weekday + firstDayOfWeek))
              .copyWith(
                  microsecond: 999,
                  millisecond: 999,
                  second: 59,
                  minute: 59,
                  hour: 23);
        } else {
          return add(Duration(days: firstDayOfWeek - weekday)).copyWith(
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
  DateTime addUnit(
      {int microseconds = 0,
      int milliseconds = 0,
      int seconds = 0,
      int minutes = 0,
      int hours = 0,
      int days = 0,
      int weeks = 0}) {
    final duration = Duration(
        microseconds: microsecond,
        milliseconds: millisecond,
        seconds: seconds,
        minutes: minutes,
        hours: hours,
        days: days + weeks * 7);
    return add(duration);
  }
}
