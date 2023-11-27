// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

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
  String get localeName => 'de';

  static m0(amount) => "${Intl.plural(amount, zero: 'null Tage', one: '1 Tag', other: '${amount} Tage')}";

  static m1(amount) => "${Intl.plural(amount, one: 'vor 1 Tag', other: 'vor ${amount} Tagen')}";

  static m2(amount) => "${Intl.plural(amount, zero: 'null Stunden', one: '1 Stunde', other: '${amount} Stunden')}";

  static m3(amount) => "${Intl.plural(amount, one: 'vor 1 Stunde', other: 'vor ${amount} Stunden')}";

  static m4(amount) => "${Intl.plural(amount, one: 'in 1 Tag', other: 'in ${amount} Tagen')}";

  static m5(amount) => "${Intl.plural(amount, one: 'in 1 Stunde', other: 'in ${amount} Stunden')}";

  static m6(amount) => "${Intl.plural(amount, one: 'in 1 Minute', other: 'in ${amount} Minuten')}";

  static m7(amount) => "${Intl.plural(amount, one: 'in 1 Monat', other: 'in ${amount} Monaten')}";

  static m8(amount) => "${Intl.plural(amount, one: 'in 1 Woche', other: 'in ${amount} Wochen')}";

  static m9(amount) => "${Intl.plural(amount, one: 'in 1 Jahr', other: 'in ${amount} Jahren')}";

  static m10(amount) => "${Intl.plural(amount, zero: 'null Minuten', one: '1 Minute', other: '${amount} Minuten')}";

  static m11(amount) => "${Intl.plural(amount, one: 'vor 1 Minute', other: 'vor ${amount} Minuten')}";

  static m12(amount) => "${Intl.plural(amount, zero: 'null Monate', one: '1 Monat', other: '${amount} Monate')}";

  static m13(amount) => "${Intl.plural(amount, one: 'vor 1 Monat', other: 'vor ${amount} Monaten')}";

  static m14(amount) => "${Intl.plural(amount, zero: 'null Sekunden', one: '1 Sekunde', other: '${amount} Sekunden')}";

  static m15(amount) => "${Intl.plural(amount, zero: 'null Wochen', one: '1 Woche', other: '${amount} Wochen')}";

  static m16(amount) => "${Intl.plural(amount, one: 'vor 1 Woche', other: 'vor ${amount} Wochen')}";

  static m17(amount) => "${Intl.plural(amount, zero: 'null Jahre', one: '1 Jahr', other: '${amount} Jahre')}";

  static m18(amount) => "${Intl.plural(amount, one: 'vor 1 Jahr', other: 'vor ${amount} Jahren')}";

  @override
  final Map<String, dynamic> messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
      'dayString': m0,
    'daysAgo': m1,
    'hourString': m2,
    'hoursAgo': m3,
    'inAYear': MessageLookupByLibrary.simpleMessage('in 1 ano'),
    'inDays': m4,
    'inHours': m5,
    'inLessThanAMinute': MessageLookupByLibrary.simpleMessage('In weniger als einer Minute'),
    'inMinutes': m6,
    'inMonths': m7,
    'inWeeks': m8,
    'inYears': m9,
    'justNow': MessageLookupByLibrary.simpleMessage('gerade jetzt'),
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
