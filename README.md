A set of extensions for DateTime for convenience usage.
Inspired by Jiffy and MomentJS

[![Coverage Status](https://codecov.io/gh/hnvcam/teno_datetime/branch/master/graph/badge.svg)](https://codecov.io/gh/hnvcam/teno_datetime)


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

## Getting started

Adding the library to your pubspec.yaml file:
```shell
dart pub add teno_datetime
```


## Additional information
Different from JS, Dart [DateTime] and [Duration] have provided many useful methods for working with.
Moreover with its powerful extension mechanism, I think we're better to utilize that instead of introducing
another data type. That's why this lib exists.
