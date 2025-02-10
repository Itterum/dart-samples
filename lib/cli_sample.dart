import 'dart:io';

void main(List<String> args) {
  stdout.writeln('Hello, what is your name?');

  var name = stdin.readLineSync();
  stdout.writeln('Hello $name!');

  stdin.pipe(stdout);

  for (;;) {
    stdout.write('>');
    var line = stdin.readLineSync();
    stdout.writeln('You said: $line');
  }
}
