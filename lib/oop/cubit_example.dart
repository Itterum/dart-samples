import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  /// The initial state of the `CounterCubit` is 0.
  CounterCubit() : super(0);

  /// When increment is called, the current state
  /// of the cubit is accessed via `state` and
  /// a new `state` is emitted via `emit`.
  void increment() => emit(state + 1);
}

void main() {
  print('----------CUBIT----------');

  /// Create a `CounterCubit` instance.
  final cubit = CounterCubit();

  /// Access the state of the `cubit` via `state`.
  print(cubit.state); // 0

  /// Interact with the `cubit` to trigger `state` changes.
  cubit.increment();

  /// Access the new `state`.
  print(cubit.state); // 1

  /// Close the `cubit` when it is no longer needed.
  cubit.close();
}
