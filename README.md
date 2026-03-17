A set of DateTime extensions for convenient usage.
Inspired by Jiffy and Moment.js.

[![Build Status](https://github.com/hnvcam/teno_datetime/actions/workflows/ci.yaml/badge.svg)](https://github.com/hnvcam/teno_datetime)
[![codecov](https://codecov.io/gh/hnvcam/teno_datetime/graph/badge.svg?token=FCRWMFYD3O)](https://codecov.io/gh/hnvcam/teno_datetime)
[![Pub Package](https://img.shields.io/pub/v/teno_datetime)](https://pub.dev/packages/teno_datetime)


## Features

#### DateTime.timeAgo
Display a human-readable string for a past DateTime.
```dart
final twoMinutesAgo = DateTime.now().subtract(Duration(minutes: 2));
print(twoMinutesAgo.timeAgo);  // 2 minutes ago
```
#### DateTime.timeIn
Display a human-readable string for a future DateTime.
```dart
final inAnHour = DateTime.now().add(Duration(hours: 1, minutes: 1));
print(inAnHour.timeIn);  // in an hour
```
#### DateTime.fromNow
A convenient combination of `timeAgo` and `timeIn` — automatically picks the right one based on whether the DateTime is in the past or future.

#### DateTime.format
A convenient way of using `DateFormat`.
```dart
final time = DateTime(2023, 11, 08, 11, 0, 0, 123, 678);
print(time.format(DateFormat.YEAR_MONTH_DAY));   // November 8, 2023
```
#### Duration.to(Unit)
Convert a Duration to the specified Unit.

#### Duration.toDurationString
Display a human-readable string for a Duration. Automatically picks the most appropriate unit, or you can specify one explicitly.
```dart
print(Duration(minutes: 4).toDurationString());       // 4 minutes
print(Duration(days: 10).toDurationString());          // a week
print(Duration(days: 10).toDurationString(Unit.day));  // 10 days
```

#### DateTime.diff
Find the difference between two DateTimes by a Unit.
```dart
final a = DateTime(2023, 11, 7);
final b = DateTime(2023, 11, 1);
print(a.diff(b, unit: Unit.day));    // 6
```
#### DateTime.startOf
Get the start of a time unit for the current DateTime.
```dart
final time = DateTime(2023, 11, 7, 22, 44, 55, 123, 789);
print(time.startOf(Unit.week));   // 2023-11-06 00:00:00.000
```
Override weekStart on call (by default it takes the value of `firstDayOfWeek`):
```dart
final time = DateTime(2023, 11, 13, 10, 37, 05, 678, 123);
print(time.startOf(Unit.week, DateTime.sunday)); // 2023-11-12 00:00:00.000
```
#### DateTime.endOf
Get the end of a time unit for the current DateTime.
```dart
// Manually set the first day of the week
firstDayOfWeek = DateTime.saturday;
final time = DateTime(2023, 11, 8);
print(time.endOf(Unit.week));  // 2023-11-10 23:59:59.999999
```
#### DateTime.addUnit
A convenient way of using `DateTime.add(Duration)`.
```dart
final time = DateTime(2023, 11, 08, 10, 34, 30, 123, 789);
print(time.addUnit(days: 1));   // 2023-11-09 10:34:30.123789
```
#### DateTime.isLeapYear
Check if the current year is a leap year.
```dart
print(DateTime(2024, 1, 1).isLeapYear);  // true
print(DateTime(1900, 1, 1).isLeapYear);  // false
```
#### DateTime.isSameUnit
```dart
final a = DateTime(2023, 11, 08, 10, 23, 0, 0, 0);
final b = DateTime(2023, 11, 08, 10, 23, 57, 12, 5);
print(a.isSameUnit(b, unit: Unit.day));   // true
```
#### DateTime.isBeforeUnit
```dart
final a = DateTime(2023, 11, 08, 10, 23, 0, 0, 0);
final b = DateTime(2023, 11, 08, 10, 23, 57, 12, 5);
// defaults to microsecond
print(a.isBeforeUnit(b)); // true
```
#### DateTime.isAfterUnit
```dart
final a = DateTime(2023, 11, 08, 10, 23, 0, 0, 0);
final b = DateTime(2023, 11, 08, 10, 23, 57, 12, 5);
print(b.isAfterUnit(a, unit: Unit.minute));  // false
```
#### DateTime.isSameOrBeforeUnit
```dart
final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
print(time.isSameOrBeforeUnit(DateTime(2023, 11, 08), unit: Unit.day));    // true
```
#### DateTime.isSameOrAfterUnit
```dart
final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
print(time.isSameOrAfterUnit(DateTime(2023, 11, 08), unit: Unit.day));    // true
```
#### DateTime.isInRange
Check if a DateTime falls within a range (inclusive).
```dart
final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
print(time.isInRange(DateTime(2023, 11, 08), DateTime(2023, 11, 08, 19)));  // false
```
#### DateTime.isInRangeExclusive
Check if a DateTime falls within a range (exclusive).
```dart
final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
print(time.isInRangeExclusive(DateTime(2023, 11, 08), DateTime(2023, 11, 08, 21))); // true
```
#### DateTime.orAfterUnit / DateTime.orBeforeUnit
Min/max helpers that return the earlier or later of two DateTimes.
```dart
final a = DateTime(2023, 11, 10, 19, 49, 53);
final b = DateTime(2023, 11, 10, 19, 50, 0);
print(a.orAfterUnit(b));  // a (the earlier one, equivalent to min)
print(a.orBeforeUnit(b)); // b (the later one, equivalent to max)
```

## Getting started

Requires Dart SDK ^3.5.0.

Add the library to your `pubspec.yaml`:
```shell
dart pub add teno_datetime
```

To ensure localization works correctly, call this after startup or when changing the language:
```dart
await ensureLocaleInit('es'); // replace with the desired locale, or omit to use Intl.systemLocale
```

Supported locales: en, en_US, de, es, fr, pt, vi, ar.


## Additional information
Unlike JavaScript, Dart's `DateTime` and `Duration` already provide many useful methods.
Combined with Dart's extension mechanism, there is no need to introduce a new data type — this library builds directly on top of the existing types.


## Generating localization files
For contributors — after editing `.arb` files in `lib/l10n/`, regenerate the message files:
```shell
dart run intl_translation:generate_from_arb --output-dir=lib/generated lib/src/localization.dart lib/l10n/*.arb
```
