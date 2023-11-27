// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static m0(amount) => "${Intl.plural(amount, zero: 'zero days', one: 'a day', other: '${amount} days')}";

  static m1(amount) => "${Intl.plural(amount, one: 'a day ago', other: '${amount} days ago')}";

  static m2(amount) => "${Intl.plural(amount, zero: 'zero hours', one: 'one hour', other: '${amount} hours')}";

  static m3(amount) => "${Intl.plural(amount, one: 'an hour ago', other: '${amount} hours ago')}";

  static m4(amount) => "${Intl.plural(amount, one: 'in a day', other: 'in ${amount} days')}";

  static m5(amount) => "${Intl.plural(amount, one: 'in an hour', other: 'in ${amount} hours')}";

  static m6(amount) => "${Intl.plural(amount, one: 'in a minute', other: 'in ${amount} minutes')}";

  static m7(amount) => "${Intl.plural(amount, one: 'in a month', other: 'in ${amount} months')}";

  static m8(amount) => "${Intl.plural(amount, one: 'in a week', other: 'in ${amount} weeks')}";

  static m9(amount) => "${Intl.plural(amount, one: 'in a year', other: 'in ${amount} years')}";

  static m10(amount) => "${Intl.plural(amount, zero: 'zero minutes', one: 'one minute', other: '${amount} minutes')}";

  static m11(amount) => "${Intl.plural(amount, one: 'a minute ago', other: '${amount} minutes ago')}";

  static m12(amount) => "${Intl.plural(amount, zero: 'zero month', one: 'a month', other: '${amount} months')}";

  static m13(amount) => "${Intl.plural(amount, one: 'a month ago', other: '${amount} months ago')}";

  static m14(amount) => "${Intl.plural(amount, zero: 'zero seconds', one: 'one second', other: '${amount} seconds')}";

  static m15(amount) => "${Intl.plural(amount, zero: 'zero weeks', one: 'a week', other: '${amount} weeks')}";

  static m16(amount) => "${Intl.plural(amount, one: 'a week ago', other: '${amount} weeks ago')}";

  static m17(amount) => "${Intl.plural(amount, zero: 'zero years', one: 'a year', other: '${amount} years')}";

  static m18(amount) => "${Intl.plural(amount, one: 'a year ago', other: '${amount} years ago')}";

  @override
  final Map<String, dynamic> messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
      'dayString': m0,
    'daysAgo': m1,
    'hourString': m2,
    'hoursAgo': m3,
    'inAYear': MessageLookupByLibrary.simpleMessage('in a year'),
    'inDays': m4,
    'inHours': m5,
    'inLessThanAMinute': MessageLookupByLibrary.simpleMessage('in less than a minute'),
    'inMinutes': m6,
    'inMonths': m7,
    'inWeeks': m8,
    'inYears': m9,
    'justNow': MessageLookupByLibrary.simpleMessage('just now'),
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
