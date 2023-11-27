A set of extensions for DateTime for convenience usage.
Inspired by Jiffy and MomentJS

[![Build Status](https://github.com/hnvcam/teno_datetime/actions/workflows/ci.yaml/badge.svg)](https://github.com/hnvcam/teno_datetime)
[![codecov](https://codecov.io/gh/hnvcam/teno_datetime/graph/badge.svg?token=FCRWMFYD3O)](https://codecov.io/gh/hnvcam/teno_datetime)
[![Pub Package](https://img.shields.io/pub/v/teno_datetime)](https://pub.dev/packages/teno_datetime)


## Features

#### DateTime.timeAgo
Display the time ago string for current DateTime.
For ex:
```dart
final twoMinutesAgo = DateTime.now().subtract(Duration(minutes: 2));
print(twoMinutesAgo.timeAgo);  // 2 minutes ago
```
#### DateTime.timeIn
Display the time in string for current DateTime.
For ex:
```dart
final inAnHour = DateTime.now().add(Duration(hours: 1, minutes: 1));
print(inAnHour.timeIn);  // in an hour
```
#### DateTime.fromNow
A more convenient way of combining above two

#### DateTime.format
A convenient way of using DateTimeFormat
```dart
final time = DateTime(2023, 11, 08, 11, 0, 0, 123, 678);
print(time.format(DateFormat.YEAR_MONTH_DAY));   // November 8, 2023
```
#### Duration.to(Unit)
Conversion to specified Unit.

#### DateTime.diff
Find difference between two DateTimes by a Unit
```dart
final a = DateTime(2023, 11, 7);
final b = DateTime(2023, 11, 1);
print(a.diff(b, unit: Unit.day);    // 6
```
#### DateTime.startOf
Get the start of time instance of current DateTime
```dart
final time = DateTime(2023, 11, 7, 22, 44, 55, 123, 789);
print(time.startOf(Unit.week));   // 2023-11-06 00:00:00.000
```
Override weekStart on call (by default it takes value of firstDayOfWeek)
```dart
final time = DateTime(2023, 11, 13, 10, 37, 05, 678, 123);
print(time.startOf(Unit.week, DateTime.sunday)); // 2023-11-12 00:00:00.000
```
#### DateTime.endOf
Get the end of time instance of current DateTime
```dart
// manually set the first day of week
firstDayOfWeek = DateTime.saturday;
final time = DateTime(2023, 11, 8);
print(time.endOf(Unit.week));  // 2023-11-10 23:59:59.999999
```
#### DateTime.addUnit
Convenient way of using DateTime.add(Duration)
```dart
final time = DateTime(2023, 11, 08, 10, 34, 30, 123, 789);
print(time.addUnit(days: 1));   // 2023-11-09 10:34:30.123789
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
// default to microsecond
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
```dart
final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
print(time.isInRange(DateTime(2023, 11, 08), DateTime(2023, 11, 08, 19));  // false
```
#### DateTime.isInRangeExclusive
```dart
final time = DateTime(2023, 11, 08, 20, 10, 20, 123, 789);
print(time.isInRangeExclusive(DateTime(2023, 11, 08), DateTime(2023, 11, 08, 21)); // true
```

## Getting started

Adding the library to your pubspec.yaml file:
```shell
dart pub add teno_datetime
```

To make sure that localization works correctly, make sure you call this after startup or changing language:
```dart
await ensureLocaleInit('es'); // replace with desired locale name or leave it empty to get value from Intl.systemLocale
```


## Additional information
Different from JS, Dart [DateTime] and [Duration] have provided many useful methods for working with.
Moreover with its powerful extension mechanism, I think we're better to utilize that instead of introducing
another data type. That's why this lib exists.
