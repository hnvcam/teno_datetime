import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/date_symbols.dart';
import 'package:intl/intl.dart';

int _firstDayOfWeek = DateTime.monday;

void ensureLocaleInit(String? locale) {
  Intl.defaultLocale = locale ?? Intl.systemLocale;
  initializeDateFormatting();
  final symbol = dateTimeSymbolMap()[Intl.defaultLocale];

  assert(symbol is DateSymbols);

  final dateSymbol = symbol as DateSymbols;

  /// The first day of the week, in ISO 8601 style, where the first day of the
  /// week, i.e. index 0, is Monday.
  /// but DateTime is built with week day start from 1
  _firstDayOfWeek = dateSymbol.FIRSTDAYOFWEEK + 1;
}

int get firstDayOfWeek {
  return _firstDayOfWeek;
}

set firstDayOfWeek(int day) {
  assert(day >= DateTime.monday && day <= DateTime.sunday);
  _firstDayOfWeek = day;
}
