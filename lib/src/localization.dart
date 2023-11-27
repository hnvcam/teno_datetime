import 'package:intl/intl.dart';

class Localization {
  static const defaultInstance = Localization._();

  const Localization._();

  String get justNow => Intl.message('just now', name: 'justNow');

  String minutesAgo(int amount) => Intl.plural(amount,
      one: 'a minute ago',
      other: '$amount minutes ago',
      name: 'minutesAgo',
      args: [amount]);

  String hoursAgo(int amount) => Intl.plural(amount,
      one: 'an hour ago',
      other: '$amount hours ago',
      name: 'hoursAgo',
      args: [amount]);

  String daysAgo(int amount) => Intl.plural(amount,
      one: 'a day ago',
      other: '$amount days ago',
      name: 'daysAgo',
      args: [amount]);

  String weeksAgo(int amount) => Intl.plural(amount,
      one: 'a week ago',
      other: '$amount weeks ago',
      name: 'weeksAgo',
      args: [amount]);

  String monthsAgo(int amount) => Intl.plural(amount,
      one: 'a month ago',
      other: '$amount months ago',
      name: 'monthsAgo',
      args: [amount]);

  String yearsAgo(int amount) => Intl.plural(amount,
      one: 'a year ago',
      other: '$amount years ago',
      name: 'yearsAgo',
      args: [amount]);

  String get inLessThanAMinute =>
      Intl.message('in less than a minute', name: 'inLessThanAMinute');

  String inMinutes(int amount) => Intl.plural(amount,
      one: 'in a minute',
      other: 'in $amount minutes',
      name: 'inMinutes',
      args: [amount]);

  String inHours(int amount) => Intl.plural(amount,
      one: 'in an hour',
      other: 'in $amount hours',
      name: 'inHours',
      args: [amount]);

  String inDays(int amount) => Intl.plural(amount,
      one: 'in a day',
      other: 'in $amount days',
      name: 'inDays',
      args: [amount]);

  String inWeeks(int amount) => Intl.plural(amount,
      one: 'in a week',
      other: 'in $amount weeks',
      name: 'inWeeks',
      args: [amount]);

  String inMonths(int amount) => Intl.plural(amount,
      one: 'in a month',
      other: 'in $amount months',
      name: 'inMonths',
      args: [amount]);

  String get inAYear => Intl.message('in a year', name: 'inAYear');

  String inYears(int amount) => Intl.plural(amount,
      one: 'in a year',
      other: 'in $amount years',
      name: 'inYears',
      args: [amount]);

  String secondString(int amount) => Intl.plural(amount,
      zero: 'zero seconds',
      one: 'one second',
      other: '$amount seconds',
      name: 'secondString',
      args: [amount]);

  String minuteString(int amount) => Intl.plural(amount,
      zero: 'zero minutes',
      one: 'one minute',
      other: '$amount minutes',
      name: 'minuteString',
      args: [amount]);

  String hourString(int amount) => Intl.plural(amount,
      zero: 'zero hours',
      one: 'one hour',
      other: '$amount hours',
      name: 'hourString',
      args: [amount]);

  String dayString(int amount) => Intl.plural(amount,
      zero: 'zero days',
      one: 'a day',
      other: '$amount days',
      name: 'dayString',
      args: [amount]);

  String weekString(int amount) => Intl.plural(amount,
      zero: 'zero weeks',
      one: 'a week',
      other: '$amount weeks',
      name: 'weekString',
      args: [amount]);

  String monthString(int amount) => Intl.plural(amount,
      zero: 'zero month',
      one: 'a month',
      other: '$amount months',
      name: 'monthString',
      args: [amount]);

  String yearString(int amount) => Intl.plural(amount,
      zero: 'zero years',
      one: 'a year',
      other: '$amount years',
      name: 'yearString',
      args: [amount]);
}
