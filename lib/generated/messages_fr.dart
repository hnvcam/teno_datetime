// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
// messages from the main program should be duplicated here with the same
// function name.
// @dart=2.12
// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef String? MessageIfAbsent(
    String? messageStr, List<Object>? args);

class MessageLookup extends MessageLookupByLibrary {
  @override
  String get localeName => 'fr';

  static m0(amount) => "${Intl.plural(amount, zero: 'zéro jour', one: 'un jour', other: '${amount} jours')}";

  static m1(amount) => "${Intl.plural(amount, one: 'il y a un jour', other: 'il y a ${amount} jours')}";

  static m2(amount) => "${Intl.plural(amount, zero: 'zéro heure', one: 'une heure', other: '${amount} heures')}";

  static m3(amount) => "${Intl.plural(amount, one: 'il y a une heure', other: 'il y a ${amount} heures')}";

  static m4(amount) => "${Intl.plural(amount, one: 'dans un jour', other: 'dans ${amount} jours')}";

  static m5(amount) => "${Intl.plural(amount, one: 'dans une heure', other: 'dans ${amount} heures')}";

  static m6(amount) => "${Intl.plural(amount, one: 'dans une minute', other: 'dans ${amount} minutes')}";

  static m7(amount) => "${Intl.plural(amount, one: 'dans un mois', other: 'dans ${amount} mois')}";

  static m8(amount) => "${Intl.plural(amount, one: 'dans une semaine', other: 'dans ${amount} semaines')}";

  static m9(amount) => "${Intl.plural(amount, one: 'dans un an', other: 'dans ${amount} ans')}";

  static m10(amount) => "${Intl.plural(amount, zero: 'zéro minute', one: 'une minute', other: '${amount} minutes')}";

  static m11(amount) => "${Intl.plural(amount, one: 'il y a une minute', other: 'il y a ${amount} minutes')}";

  static m12(amount) => "${Intl.plural(amount, zero: 'zéro mois', one: 'un mois', other: '${amount} mois')}";

  static m13(amount) => "${Intl.plural(amount, one: 'il y a un mois', other: 'il y a ${amount} mois')}";

  static m14(amount) => "${Intl.plural(amount, zero: 'zéro seconde', one: 'une seconde', other: '${amount} secondes')}";

  static m15(amount) => "${Intl.plural(amount, zero: 'zéro semaine', one: 'une semaine', other: '${amount} semaines')}";

  static m16(amount) => "${Intl.plural(amount, one: 'il y a une semaine', other: 'il y a ${amount} semaines')}";

  static m17(amount) => "${Intl.plural(amount, zero: 'zéro an', one: 'un an', other: '${amount} ans')}";

  static m18(amount) => "${Intl.plural(amount, one: 'il y a un an', other: 'il y a ${amount} ans')}";

  @override
  final Map<String, dynamic> messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
      'dayString': m0,
    'daysAgo': m1,
    'hourString': m2,
    'hoursAgo': m3,
    'inAYear': MessageLookupByLibrary.simpleMessage('dans un an'),
    'inDays': m4,
    'inHours': m5,
    'inLessThanAMinute': MessageLookupByLibrary.simpleMessage('dans moins d\'une minute'),
    'inMinutes': m6,
    'inMonths': m7,
    'inWeeks': m8,
    'inYears': m9,
    'justNow': MessageLookupByLibrary.simpleMessage('à l\'instant'),
    'minuteString': m10,
    'minutesAgo': m11,
    'monthString': m12,
    'monthsAgo': m13,
    'secondString': m14,
    'weekString': m15,
    'weeksAgo': m16,
    'yearString': m17,
    'yearsAgo': m18
  };
}
