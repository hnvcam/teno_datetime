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
}
