import 'package:bloc/bloc.dart';
import 'dart:io';

abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class CounterResetPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));
    on<CounterResetPressed>((event, emit) => emit(0));
  }
}

void clearScreen() => stdout.write('\x1B[2J\x1B[0;0H');

void main() async {
  final counterBloc = CounterBloc();

  while (true) {
    clearScreen();

    stdout
      ..writeln('Counter value: ${counterBloc.state}')
      ..writeln('Enter command (increment, decrement, reset, q to quit):');

    final command = stdin.readLineSync();

    if (command == null || command == 'q') break;

    switch (command) {
      case 'increment':
        counterBloc.add(CounterIncrementPressed());
        break;
      case 'decrement':
        counterBloc.add(CounterDecrementPressed());
        break;
      case 'reset':
        counterBloc.add(CounterResetPressed());
        break;
      default:
        stdout.writeln('Invalid input');
    }

    await Future.delayed(Duration.zero);
  }

  await counterBloc.close();
}
