import 'constants.dart';

/// Returns the int value of this [Duration] in [Unit]
/// The value is the integer part of the division
extension DurationToUnit on Duration {
  int to(Unit unit) {
    switch (unit) {
      case Unit.microsecond:
        return inMicroseconds;
      case Unit.second:
        return inSeconds;
      case Unit.minute:
        return inMinutes;
      case Unit.hour:
        return inHours;
      case Unit.day:
        return inDays;
      case Unit.week:
        return inDays ~/ 7;
      case Unit.month:
        return inDays ~/ 30;
      case Unit.year:
        return inDays ~/ 365;
      case Unit.millisecond:
      default:
        return inMilliseconds;
    }
  }
}
