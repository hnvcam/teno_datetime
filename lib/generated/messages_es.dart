// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static m0(amount) => "${Intl.plural(amount, zero: 'cero días', one: 'un día', other: '${amount} días')}";

  static m1(amount) => "${Intl.plural(amount, one: 'hace un día', other: 'hace ${amount} días')}";

  static m2(amount) => "${Intl.plural(amount, zero: 'cero horas', one: 'una hora', other: '${amount} horas')}";

  static m3(amount) => "${Intl.plural(amount, one: 'hace una hora', other: 'hace ${amount} horas')}";

  static m4(amount) => "${Intl.plural(amount, one: 'en un día', other: 'en ${amount} días')}";

  static m5(amount) => "${Intl.plural(amount, one: 'en una hora', other: 'en ${amount} horas')}";

  static m6(amount) => "${Intl.plural(amount, one: 'en un minuto', other: 'en ${amount} minutos')}";

  static m7(amount) => "${Intl.plural(amount, one: 'en un mes', other: 'en ${amount} meses')}";

  static m8(amount) => "${Intl.plural(amount, one: 'en una semana', other: 'en ${amount} semanas')}";

  static m9(amount) => "${Intl.plural(amount, one: 'en un año', other: 'en ${amount} años')}";

  static m10(amount) => "${Intl.plural(amount, zero: 'cero minutos', one: 'un minuto', other: '${amount} minutos')}";

  static m11(amount) => "${Intl.plural(amount, one: 'hace un minuto', other: 'hace ${amount} minutos')}";

  static m12(amount) => "${Intl.plural(amount, zero: 'cero meses', one: 'un mes', other: '${amount} meses')}";

  static m13(amount) => "${Intl.plural(amount, one: 'hace un mes', other: 'hace ${amount} meses')}";

  static m14(amount) => "${Intl.plural(amount, zero: 'cero segundos', one: 'un segundo', other: '${amount} segundos')}";

  static m15(amount) => "${Intl.plural(amount, zero: 'cero semanas', one: 'una semana', other: '${amount} semanas')}";

  static m16(amount) => "${Intl.plural(amount, one: 'hace una semana', other: 'hace ${amount} semanas')}";

  static m17(amount) => "${Intl.plural(amount, zero: 'cero años', one: 'un año', other: '${amount} años')}";

  static m18(amount) => "${Intl.plural(amount, one: 'hace un año', other: 'hace ${amount} años')}";

  @override
  final Map<String, dynamic> messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
      'dayString': m0,
    'daysAgo': m1,
    'hourString': m2,
    'hoursAgo': m3,
    'inAYear': MessageLookupByLibrary.simpleMessage('en un año'),
    'inDays': m4,
    'inHours': m5,
    'inLessThanAMinute': MessageLookupByLibrary.simpleMessage('en menos de un minuto'),
    'inMinutes': m6,
    'inMonths': m7,
    'inWeeks': m8,
    'inYears': m9,
    'justNow': MessageLookupByLibrary.simpleMessage('ahora mismo'),
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
