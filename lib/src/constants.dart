/// Supported unit on [manipulation] and [get_set]
enum Unit {
  microsecond,
  millisecond,
  second,
  minute,
  hour,
  day,
  week,
  month,
  year
}

/// This map contains number of days of a specific month in general. For leap year, DateTime.february
/// will have 29 days and must be calculated manually
/// See: [isLeapYear]
const genericMonthDayCount = {
  DateTime.january: 31,
  DateTime.february: 28,
  DateTime.march: 31,
  DateTime.april: 30,
  DateTime.may: 31,
  DateTime.june: 30,
  DateTime.july: 31,
  DateTime.august: 31,
  DateTime.september: 30,
  DateTime.october: 31,
  DateTime.november: 30,
  DateTime.december: 31
};
