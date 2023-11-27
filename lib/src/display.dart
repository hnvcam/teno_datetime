import 'package:intl/intl.dart';
import 'package:teno_datetime/src/constants.dart';
import 'package:teno_datetime/src/localization.dart';

extension FromNow on DateTime {
  /// Display human readable format for a distance from now
  /// For the past time, display with [timeAgo]
  /// For the future time, display with [timeIn]
  String get fromNow {
    final now = DateTime.now();
    if (now.microsecondsSinceEpoch > microsecondsSinceEpoch) {
      return timeAgo;
    } else {
      return timeIn;
    }
  }

  /// Display human readable format for a past time
  /// For ex: a minute ago, 2 days ago, ...
  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(this);
    assert(!difference.isNegative, 'timeAgo is used for past time');

    if (difference.inSeconds < 60) {
      return Localization.defaultInstance.justNow;
    } else if (difference.inMinutes < 60) {
      final amount = difference.inMinutes;
      return Localization.defaultInstance.minutesAgo(amount);
    } else if (difference.inHours < 24) {
      final amount = difference.inHours;
      return Localization.defaultInstance.hoursAgo(amount);
    } else if (difference.inDays < 7) {
      final amount = difference.inDays;
      return Localization.defaultInstance.daysAgo(amount);
    } else if (difference.inDays < 30) {
      final amount = (difference.inDays / 7).round();
      return Localization.defaultInstance.weeksAgo(amount);
    } else if (difference.inDays < 365) {
      final amount = (difference.inDays / 30).round();
      return Localization.defaultInstance.monthsAgo(amount);
    } else {
      final amount = (difference.inDays / 365).round();
      return Localization.defaultInstance.yearsAgo(amount);
    }
  }

  /// Display human readable format for a future time
  /// For ex: in less than a minute, in 2 days, ...
  String get timeIn {
    final now = DateTime.now();
    final difference = this.difference(now);
    assert(!difference.isNegative, 'timeIn is used for future time');
    if (difference.inSeconds < 60) {
      return Localization.defaultInstance.inLessThanAMinute;
    } else if (difference.inMinutes < 60) {
      final amount = difference.inMinutes;
      return Localization.defaultInstance.inMinutes(amount);
    } else if (difference.inHours < 24) {
      final amount = difference.inHours;
      return Localization.defaultInstance.inHours(amount);
    } else if (difference.inDays < 7) {
      final amount = difference.inDays;
      return Localization.defaultInstance.inDays(amount);
    } else if (difference.inDays < 30) {
      final amount = (difference.inDays / 7).round();
      return Localization.defaultInstance.inWeeks(amount);
    } else if (difference.inDays < 365) {
      final amount = (difference.inDays / 30).round();
      // there will be always a gap between 360 to 365 days
      if (amount == 12) {
        return Localization.defaultInstance.inAYear;
      }
      return Localization.defaultInstance.inMonths(amount);
    } else {
      final amount = (difference.inDays / 365).round();
      return Localization.defaultInstance.inYears(amount);
    }
  }
}

extension DateTimeFormat on DateTime {
  /// This is just a convenience usage of [DateFormat]
  String format(String pattern, {String? locale}) {
    return DateFormat(pattern, locale).format(this);
  }
}

extension DurationFormat on Duration {
  /// This will round to nearest unit
  String toDurationString([Unit? unit]) {
    if (unit != null) {
      return _toDurationUnitString(unit);
    }
    if (inSeconds < 60) {
      return _toDurationUnitString(Unit.second);
    } else if (inMinutes < 60) {
      return _toDurationUnitString(Unit.minute);
    } else if (inHours < 24) {
      return _toDurationUnitString(Unit.hour);
    } else if (inDays < 7) {
      return _toDurationUnitString(Unit.day);
    } else if (inDays < 30) {
      return _toDurationUnitString(Unit.week);
    } else if (inDays < 365) {
      return _toDurationUnitString(Unit.month);
    } else {
      return _toDurationUnitString(Unit.year);
    }
  }

  String _toDurationUnitString(Unit unit) {
    switch (unit) {
      case Unit.second:
        return Localization.defaultInstance
            .secondString((inMilliseconds / 1000).round());
      case Unit.minute:
        return Localization.defaultInstance
            .minuteString((inSeconds / 60).round());
      case Unit.hour:
        return Localization.defaultInstance
            .hourString((inMinutes / 60).round());
      case Unit.day:
        return Localization.defaultInstance.dayString((inHours / 24).round());
      case Unit.week:
        return Localization.defaultInstance.weekString((inDays / 7).round());
      case Unit.month:
        return Localization.defaultInstance.monthString((inDays / 30).round());
      case Unit.year:
        return Localization.defaultInstance.yearString((inDays / 365).round());
      default:
        throw UnsupportedError('Unsupported unit $unit');
    }
  }
}
