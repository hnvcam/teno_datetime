// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static m0(amount) => "${Intl.plural(amount, zero: 'zero dias', one: 'um dia', other: '${amount} dias')}";

  static m1(amount) => "${Intl.plural(amount, one: 'há um dia', other: 'há ${amount} dias')}";

  static m2(amount) => "${Intl.plural(amount, zero: 'zero horas', one: 'uma hora', other: '${amount} horas')}";

  static m3(amount) => "${Intl.plural(amount, one: 'há uma hora', other: 'há ${amount} horas')}";

  static m4(amount) => "${Intl.plural(amount, one: 'em um dia', other: 'em ${amount} dias')}";

  static m5(amount) => "${Intl.plural(amount, one: 'em uma hora', other: 'em ${amount} horas')}";

  static m6(amount) => "${Intl.plural(amount, one: 'em um minuto', other: 'em ${amount} minutos')}";

  static m7(amount) => "${Intl.plural(amount, one: 'em um mês', other: 'em ${amount} meses')}";

  static m8(amount) => "${Intl.plural(amount, one: 'em uma semana', other: 'em ${amount} semanas')}";

  static m9(amount) => "${Intl.plural(amount, one: 'em um ano', other: 'em ${amount} anos')}";

  static m10(amount) => "${Intl.plural(amount, zero: 'zero minutos', one: 'um minuto', other: '${amount} minutos')}";

  static m11(amount) => "${Intl.plural(amount, one: 'há um minuto', other: 'há ${amount} minutos')}";

  static m12(amount) => "${Intl.plural(amount, zero: 'zero meses', one: 'um mês', other: '${amount} meses')}";

  static m13(amount) => "${Intl.plural(amount, one: 'há um mês', other: 'há ${amount} meses')}";

  static m14(amount) => "${Intl.plural(amount, zero: 'zero segundos', one: 'um segundo', other: '${amount} segundos')}";

  static m15(amount) => "${Intl.plural(amount, zero: 'zero semanas', one: 'uma semana', other: '${amount} semanas')}";

  static m16(amount) => "${Intl.plural(amount, one: 'há uma semana', other: 'há ${amount} semanas')}";

  static m17(amount) => "${Intl.plural(amount, zero: 'zero anos', one: 'um ano', other: '${amount} anos')}";

  static m18(amount) => "${Intl.plural(amount, one: 'há um ano', other: 'há ${amount} anos')}";

  @override
  final Map<String, dynamic> messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
      'dayString': m0,
    'daysAgo': m1,
    'hourString': m2,
    'hoursAgo': m3,
    'inAYear': MessageLookupByLibrary.simpleMessage('em um ano'),
    'inDays': m4,
    'inHours': m5,
    'inLessThanAMinute': MessageLookupByLibrary.simpleMessage('em menos de um minuto'),
    'inMinutes': m6,
    'inMonths': m7,
    'inWeeks': m8,
    'inYears': m9,
    'justNow': MessageLookupByLibrary.simpleMessage('agora mesmo'),
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
