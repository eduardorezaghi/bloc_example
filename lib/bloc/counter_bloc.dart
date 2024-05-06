import 'package:flutter_bloc/flutter_bloc.dart';

// `part` directive is used to split the code into multiple files.
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {

    on<Increment>((event, emit) {
      emit(state + 1);
    });

    on<Decrement>((event, emit) {
      if (state > 0) {
        emit(state - 1);
      }
    });
  }
}