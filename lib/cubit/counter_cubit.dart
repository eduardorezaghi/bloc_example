import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterCubit extends Cubit<int> {
  // The initial state of the CounterCubit.
  // Here, it is set to 0, because it's a integer counter.
  CounterCubit() : super(0);

  // The increment and decrement methods are used to change the state of the CounterCubit.
  void increment() => emit(state + 1);
  void decrement() => state > 0 ? emit(state - 1) : emit(0);
}