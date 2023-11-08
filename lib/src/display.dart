import 'package:intl/intl.dart';

extension FromNow on DateTime {
  /// Display human readable format for a distance from now
  /// For the past time, display with [timeAgo]
  /// For the future time, display with [timeIn]
  String get fromNow {
    final now = DateTime.now();
    if (now.microsecondsSinceEpoch <= microsecondsSinceEpoch) {
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
      return Intl.message('just now', name: 'justNow');
    } else if (difference.inMinutes < 60) {
      final amount = difference.inMinutes;
      return Intl.plural(
        amount,
        one: 'a minute ago',
        other: '$amount minutes ago',
        name: 'minutesAgo',
      );
    } else if (difference.inHours < 24) {
      final amount = difference.inHours;
      return Intl.plural(
        amount,
        one: 'an hour ago',
        other: '$amount hours ago',
        name: 'hoursAgo',
      );
    } else if (difference.inDays < 30) {
      final amount = difference.inDays;
      return Intl.plural(
        amount,
        one: 'a day ago',
        other: '$amount days ago',
        name: 'daysAgo',
      );
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return Intl.plural(
        months,
        one: 'a month ago',
        other: '$months months ago',
        name: 'monthsAgo',
      );
    } else {
      final years = (difference.inDays / 365).floor();
      return Intl.plural(
        years,
        one: 'a year ago',
        other: '$years years ago',
        name: 'yearsAgo',
      );
    }
  }

  /// Display human readable format for a future time
  /// For ex: in less than a minute, in 2 days, ...
  String get timeIn {
    final now = DateTime.now();
    final difference = this.difference(now);
    assert(!difference.isNegative, 'timeIn is used for future time');
    if (difference.inSeconds < 60) {
      return Intl.message('in less than a minute', name: 'inLessThanAMinute');
    } else if (difference.inMinutes < 60) {
      final amount = difference.inMinutes;
      return Intl.plural(
        amount,
        one: 'in a minute',
        other: 'in $amount minutes',
        name: 'inMinutes',
      );
    } else if (difference.inHours < 24) {
      final amount = difference.inHours;
      return Intl.plural(
        amount,
        one: 'in an hour',
        other: 'in $amount hours',
        name: 'inHours',
      );
    } else if (difference.inDays < 30) {
      final amount = difference.inDays;
      return Intl.plural(
        amount,
        one: 'in a day',
        other: 'in $amount days',
        name: 'inDays',
      );
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      // there will be always a gap between 360 to 365 days
      if (months == 12) {
        return Intl.message('in a year', name: 'inAYear');
      }
      return Intl.plural(
        months,
        one: 'in a month',
        other: 'in $months months',
        name: 'inMonths',
      );
    } else {
      final years = (difference.inDays / 365).floor();
      return Intl.plural(
        years,
        one: 'in a year',
        other: 'in $years years',
        name: 'inYears',
      );
    }
  }
}

extension Format on DateTime {
  /// This is just a convenience usage of [DateFormat]
  String format(String pattern, {String? locale}) {
    return DateFormat(pattern, locale).format(this);
  }
}
