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

  bool isSameOrBeforeUnit(DateTime other, {Unit unit = Unit.microsecond}) {
    return isSameUnit(other, unit: unit) || isBeforeUnit(other, unit: unit);
  }

  bool isSameOrAfterUnit(DateTime other, {Unit unit = Unit.microsecond}) {
    return isSameUnit(other, unit: unit) || isAfterUnit(other, unit: unit);
  }
}

extension QueryRange on DateTime {
  /// Check if the value is in a range, inclusively.
  bool isInRange(DateTime start, DateTime end, {Unit unit = Unit.microsecond}) {
    return isSameOrAfterUnit(start, unit: unit) &&
        isSameOrBeforeUnit(end, unit: unit);
  }

  /// Check if the value is in a range, exclusively
  bool isInRangeExclusive(DateTime start, DateTime end,
      {Unit unit = Unit.microsecond}) {
    return isAfterUnit(start, unit: unit) && isBeforeUnit(end, unit: unit);
  }
}

extension MinMax on DateTime {
  /// Return this instance or other if this is after the other
  /// Equivalent to min(this, other)
  DateTime orAfterUnit(DateTime other, {Unit unit = Unit.microsecond}) {
    if (isAfterUnit(other, unit: unit)) {
      return other;
    }
    return this;
  }

  /// Return this instance or other if this is before the other
  /// Equivalent to max(this, other)
  DateTime orBeforeUnit(DateTime other, {Unit unit = Unit.microsecond}) {
    if (isBeforeUnit(other, unit: unit)) {
      return other;
    }
    return this;
  }
}
