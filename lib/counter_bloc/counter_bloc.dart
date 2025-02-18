import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementEvent>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecrementEvent>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
  }
}
