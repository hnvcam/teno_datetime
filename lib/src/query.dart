import 'manipulation.dart';

import 'constants.dart';

extension IsSame on DateTime {
  bool get isLeapYear {
    return (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
  }

  bool isSame(DateTime other, {Unit unit = Unit.microsecond}) {
    if (unit == Unit.microsecond) {
      return microsecondsSinceEpoch == other.microsecondsSinceEpoch;
    }
    final thisStartOf = startOf(unit);
    final otherStartOf = other.startOf(unit);
    return thisStartOf == otherStartOf;
  }
}
