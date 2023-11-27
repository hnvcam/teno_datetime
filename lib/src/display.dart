import 'package:intl/intl.dart';
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
    } else if (difference.inDays < 30) {
      final amount = difference.inDays;
      return Localization.defaultInstance.daysAgo(amount);
    } else if (difference.inDays < 365) {
      final amount = (difference.inDays / 30).floor();
      return Localization.defaultInstance.monthsAgo(amount);
    } else {
      final amount = (difference.inDays / 365).floor();
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
    } else if (difference.inDays < 30) {
      final amount = difference.inDays;
      return Localization.defaultInstance.inDays(amount);
    } else if (difference.inDays < 365) {
      final amount = (difference.inDays / 30).floor();
      // there will be always a gap between 360 to 365 days
      if (amount == 12) {
        return Localization.defaultInstance.inAYear;
      }
      return Localization.defaultInstance.inMonths(amount);
    } else {
      final amount = (difference.inDays / 365).floor();
      return Localization.defaultInstance.inYears(amount);
    }
  }
}

extension Format on DateTime {
  /// This is just a convenience usage of [DateFormat]
  String format(String pattern, {String? locale}) {
    return DateFormat(pattern, locale).format(this);
  }
}
