// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static m0(amount) => "${Intl.plural(amount, zero: '0 ngày', one: '1 ngày', other: '${amount} ngày')}";

  static m1(amount) => "${Intl.plural(amount, one: 'một ngày trước', other: '${amount} ngày trước')}";

  static m2(amount) => "${Intl.plural(amount, zero: '0 giờ', one: '1 giờ', other: '${amount} giờ')}";

  static m3(amount) => "${Intl.plural(amount, one: 'một giờ trước', other: '${amount} giờ trước')}";

  static m4(amount) => "${Intl.plural(amount, one: 'trong ngày mai', other: 'sau ${amount} ngày')}";

  static m5(amount) => "${Intl.plural(amount, one: 'sau một giờ', other: 'sau ${amount} giờ')}";

  static m6(amount) => "${Intl.plural(amount, one: 'sau 1 phút', other: 'sau ${amount} phút')}";

  static m7(amount) => "${Intl.plural(amount, one: 'trong tháng sau', other: 'sau ${amount} tháng')}";

  static m8(amount) => "${Intl.plural(amount, one: 'trong một tuần', other: 'sau ${amount} tuần')}";

  static m9(amount) => "${Intl.plural(amount, one: 'sang năm', other: 'sau ${amount} năm')}";

  static m10(amount) => "${Intl.plural(amount, zero: '0 phút', one: '1 phút', other: '${amount} phút')}";

  static m11(amount) => "${Intl.plural(amount, one: 'một phút trước', other: '${amount} phút trước')}";

  static m12(amount) => "${Intl.plural(amount, zero: '0 tháng', one: '1 tháng', other: '${amount} tháng')}";

  static m13(amount) => "${Intl.plural(amount, one: 'một tháng trước', other: '${amount} tháng trước')}";

  static m14(amount) => "${Intl.plural(amount, zero: '0 giây', one: '1 giây', other: '${amount} giây')}";

  static m15(amount) => "${Intl.plural(amount, zero: '0 tuần', one: '1 tuần', other: '${amount} tuần')}";

  static m16(amount) => "${Intl.plural(amount, one: 'một tuần trước', other: '${amount} tuần trước')}";

  static m17(amount) => "${Intl.plural(amount, zero: '0 năm', one: '1 năm', other: '${amount} năm')}";

  static m18(amount) => "${Intl.plural(amount, one: 'một năm trước', other: '${amount} năm trước')}";

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
    'inLessThanAMinute': MessageLookupByLibrary.simpleMessage('sau ít hơn một phút'),
    'inMinutes': m6,
    'inMonths': m7,
    'inWeeks': m8,
    'inYears': m9,
    'justNow': MessageLookupByLibrary.simpleMessage('ngay bây giờ'),
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
