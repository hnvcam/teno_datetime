import 'constants.dart';
import 'manipulation.dart';

extension IsSame on DateTime {
  /// Check if current year is a leap year
  bool get isLeapYear {
    return (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
  }

  /// Check if the value is same as other [DateTime] by [Unit]
  /// For example DateTime.now().isSame(DateTime.now().addUnit(seconds: 1), unit: Unit.minute) == true
  bool isSameUnit(DateTime other, {Unit unit = Unit.microsecond}) {
    if (unit == Unit.microsecond) {
      return microsecondsSinceEpoch == other.microsecondsSinceEpoch;
    }
    final thisStartOf = startOf(unit);
    final otherStartOf = other.startOf(unit);
    return thisStartOf == otherStartOf;
  }

  /// Check if the value is before other [DateTime] by [Unit]
  /// For example DateTime.now().isBefore(DateTime.now().addUnit(seconds: 1), unit: Unit.second) == true
  bool isBeforeUnit(DateTime other, {Unit unit = Unit.microsecond}) {
    if (unit == Unit.microsecond) {
      return microsecondsSinceEpoch < other.microsecondsSinceEpoch;
    }
    final thisStartOf = startOf(unit);
    final otherStartOf = other.startOf(unit);
    return thisStartOf.microsecondsSinceEpoch <
        otherStartOf.microsecondsSinceEpoch;
  }

  /// Check if the value is after other [DateTime] by [Unit]
  /// For example DateTime.now().isAfter(DateTime.now(), unit: Unit.second) == false
  bool isAfterUnit(DateTime other, {Unit unit = Unit.microsecond}) {
    if (unit == Unit.microsecond) {
      return microsecondsSinceEpoch > other.microsecondsSinceEpoch;
    }
    final thisStartOf = startOf(unit);
    final otherStartOf = other.startOf(unit);
    return thisStartOf.microsecondsSinceEpoch >
        otherStartOf.microsecondsSinceEpoch;
  }
}
