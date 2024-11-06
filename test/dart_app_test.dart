import 'package:test/test.dart';
import 'package:dart_app/tasks.dart';

void main() {
  test('average', () {
    expect(average([1, 2, 3]), 2);
    expect(average([2, 3, 4]), 3);
  });

  test('sortArrToStr', () {
    expect(sortArrToStr([5, 4, 3, 6, 2]), '2 3 4 5 6');
    expect(sortArrToStr([11, 4, 32, 75, 23]), '4 11 23 32 75');
  });

  test('leapYear', () {
    expect(leapYear(2016), true);
    expect(leapYear(2013), false);
  });

  test('reverseStr', () {
    expect(reverseStr('test test2 test3'), 'test3 test2 test');
  });

  test('evenNumbers', () {
    expect(evenNumbers([1, 2, 3, 4, 5]), [2, 4]);
    expect(evenNumbers([1, 3, 5]), []);
  });
}
