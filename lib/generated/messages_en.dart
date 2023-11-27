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

  static m0(amount) => "${Intl.plural(amount, one: 'a day ago', other: '${amount} days ago')}";

  static m1(amount) => "${Intl.plural(amount, one: 'an hour ago', other: '${amount} hours ago')}";

  static m2(amount) => "${Intl.plural(amount, one: 'in a day', other: 'in ${amount} days')}";

  static m3(amount) => "${Intl.plural(amount, one: 'in an hour', other: 'in ${amount} hours')}";

  static m4(amount) => "${Intl.plural(amount, one: 'in a minute', other: 'in ${amount} minutes')}";

  static m5(amount) => "${Intl.plural(amount, one: 'in a month', other: 'in ${amount} months')}";

  static m6(amount) => "${Intl.plural(amount, one: 'in a year', other: 'in ${amount} years')}";

  static m7(amount) => "${Intl.plural(amount, one: 'a minute ago', other: '${amount} minutes ago')}";

  static m8(amount) => "${Intl.plural(amount, one: 'a month ago', other: '${amount} months ago')}";

  static m9(amount) => "${Intl.plural(amount, one: 'a year ago', other: '${amount} years ago')}";

  @override
  final Map<String, dynamic> messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
      'daysAgo': m0,
    'hoursAgo': m1,
    'inAYear': MessageLookupByLibrary.simpleMessage('in a year'),
    'inDays': m2,
    'inHours': m3,
    'inLessThanAMinute': MessageLookupByLibrary.simpleMessage('in less than a minute'),
    'inMinutes': m4,
    'inMonths': m5,
    'inYears': m6,
    'justNow': MessageLookupByLibrary.simpleMessage('just now'),
    'minutesAgo': m7,
    'monthsAgo': m8,
    'yearsAgo': m9
  };
}
