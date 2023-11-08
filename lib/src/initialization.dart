import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/date_symbols.dart';
import 'package:intl/intl.dart';

int _firstDayOfWeek = DateTime.monday;

/// This is to make sure that the switched locale is fully initialized and
/// correct firstDayOfWeek is set correctly.
/// to override the locale firstDayOfWeek, consider using setter of [firstDayOfWeek]
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

/// Get current configured first day of week
/// If [ensureLocaleInit] is not called before this, then it always return [DateTime.monday]
int get firstDayOfWeek {
  return _firstDayOfWeek;
}

/// Override the locale based first day of week
/// The accepted values are from [DateTime.monday] to [DateTime.sunday]
set firstDayOfWeek(int day) {
  assert(day >= DateTime.monday && day <= DateTime.sunday);
  _firstDayOfWeek = day;
}
