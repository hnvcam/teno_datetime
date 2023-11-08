import 'package:teno_datetime/teno_datetime.dart';

void main() {
  /// add by unit
  final time = DateTime(2023, 11, 08, 10, 34, 30, 123, 789);
  print(time.addUnit(seconds: 2)); // 2023-11-08 10:34:32.123789

  print(time.addUnit(days: 1)); // 2023-11-09 10:34:30.123789

  /// diff
  final anotherTime = DateTime(2023, 12, 1, 10, 34, 30, 123, 789);
  print(time.diff(anotherTime, unit: Unit.day)); // - 23

  /// startOf
  final time2 = DateTime(2023, 11, 7, 22, 44, 55, 123, 789);
  print(time2.startOf(Unit.week));

  /// endOf
  firstDayOfWeek = DateTime.saturday;
  final time3 = DateTime(2023, 11, 8);
  print(time3.endOf(Unit.week)); // 2023-11-10 23:59:59.999999

  /// isSameUnit
  final a = DateTime(2023, 11, 08, 10, 23, 0, 0, 0);
  final b = DateTime(2023, 11, 08, 10, 23, 57, 12, 5);
  print(a.isSameUnit(b, unit: Unit.day));

  /// isBeforeUnit, default to microsecond
  print(a.isBeforeUnit(b)); // true

  /// isAfterUnit
  print(b.isAfterUnit(a, unit: Unit.minute));
}
