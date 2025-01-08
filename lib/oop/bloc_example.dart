import 'package:bloc/bloc.dart';

abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
  }
}

void main() async {
  final bloc = CounterBloc();

  bloc.add(CounterIncrementPressed());
  await Future.delayed(const Duration(seconds: 5));

  print(bloc.state);

  bloc.add(CounterIncrementPressed());
  await Future.delayed(const Duration(seconds: 5));

  print(bloc.state);

  bloc.add(CounterIncrementPressed());
  await Future.delayed(const Duration(seconds: 5));

  print(bloc.state);

  bloc.add(CounterIncrementPressed());
  await Future.delayed(const Duration(seconds: 5));

  print(bloc.state);
  await bloc.close();
}
