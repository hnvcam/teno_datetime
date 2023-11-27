// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static m0(amount) => "${Intl.plural(amount, one: 'một ngày trước', other: '${amount} ngày trước')}";

  static m1(amount) => "${Intl.plural(amount, one: 'một giờ trước', other: '${amount} giờ trước')}";

  static m2(amount) => "${Intl.plural(amount, one: 'trong ngày mai', other: 'sau ${amount} ngày')}";

  static m3(amount) => "${Intl.plural(amount, one: 'sau một giờ', other: 'sau ${amount} giờ')}";

  static m4(amount) => "${Intl.plural(amount, one: 'sau 1 phút', other: 'sau ${amount} phút')}";

  static m5(amount) => "${Intl.plural(amount, one: 'trong tháng sau', other: 'sau ${amount} tháng')}";

  static m6(amount) => "${Intl.plural(amount, one: 'sang năm', other: 'sau ${amount} năm')}";

  static m7(amount) => "${Intl.plural(amount, one: 'một phút trước', other: '${amount} phút trước')}";

  static m8(amount) => "${Intl.plural(amount, one: 'một tháng trước', other: '${amount} tháng trước')}";

  static m9(amount) => "${Intl.plural(amount, one: 'một năm trước', other: '${amount} năm trước')}";

  @override
  final Map<String, dynamic> messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
      'daysAgo': m0,
    'hoursAgo': m1,
    'inAYear': MessageLookupByLibrary.simpleMessage('in a year'),
    'inDays': m2,
    'inHours': m3,
    'inLessThanAMinute': MessageLookupByLibrary.simpleMessage('sau ít hơn một phút'),
    'inMinutes': m4,
    'inMonths': m5,
    'inYears': m6,
    'justNow': MessageLookupByLibrary.simpleMessage('ngay bây giờ'),
    'minutesAgo': m7,
    'monthsAgo': m8,
    'yearsAgo': m9
  };
}
