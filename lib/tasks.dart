// task 1
void task_1() {
  var x = 25;
  print(x);
  x = 30;
  print(x);
}

// task 2
int average(List<int> listNumbers) {
  int sum = 0;

  for (final i in listNumbers) {
    sum += i;
  }

  return sum ~/ listNumbers.length;
}

// task 3
String sortArrToStr(List<int> listNumbers) {
  listNumbers.sort();
  return listNumbers.join(' ');
}

// task 4
bool leapYear(int year) => year % 4 == 0;

// task 5
String reverseStr(String str) => str.split(' ').reversed.join(' ');

// task 6
List<int> evenNumbers(List<int> numbers) =>
    numbers.where((e) => e.isEven).toList();

// task 7
void printPowerOfTwo() {
  for (int i = 1; i <= 6; i++) {
    int powerOfTwo = 1 << i;
    print(powerOfTwo);
  }
}

// task 8
List<int> someFunction(int step, int length) {
  return List.generate(length, (idx) => step * (idx + 1));
}
