import 'package:teno_datetime/src/constants.dart';
import 'package:teno_datetime/src/get_set.dart';
import 'package:test/test.dart';

main() {
  test("Duration to weeks", () {
    expect(Duration(days: 1).to(Unit.week), 0);
    expect(Duration(days: 7).to(Unit.week), 1);
    expect(Duration(days: 13).to(Unit.week), 1);
    expect(Duration(days: 14, hours: 20, minutes: 1).to(Unit.week), 2);
  });
}
