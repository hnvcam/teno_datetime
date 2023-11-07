import 'package:intl/intl.dart';

extension FromNow on DateTime {
  String fromNow() {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inSeconds < 60) {
      return Intl.message('Just now', name: 'justNow');
    } else if (difference.inMinutes < 60) {
      return Intl.plural(
        difference.inMinutes,
        one: 'A minute ago',
        other: '$difference minutes ago',
        name: 'minutesAgo',
      );
    } else if (difference.inHours < 24) {
      return Intl.plural(
        difference.inHours,
        one: 'An hour ago',
        other: '$difference hours ago',
        name: 'hoursAgo',
      );
    } else if (difference.inDays < 30) {
      return Intl.plural(
        difference.inDays,
        one: 'A day ago',
        other: '$difference days ago',
        name: 'daysAgo',
      );
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return Intl.plural(
        months,
        one: 'A month ago',
        other: '$months months ago',
        name: 'monthsAgo',
      );
    } else {
      final years = (difference.inDays / 365).floor();
      return Intl.plural(
        years,
        one: 'A year ago',
        other: '$years years ago',
        name: 'yearsAgo',
      );
    }
  }
}

extension Format on DateTime {
  String format(String pattern, {String? locale}) {
    return DateFormat(pattern, locale).format(this);
  }
}
