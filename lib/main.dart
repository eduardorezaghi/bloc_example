import 'package:bloc_example/cubit/counter_cubit.dart';
import 'package:bloc_example/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap the main widget with the BlocProvider,
    // so that the CounterCubit instance can be shared with the child widgets.
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 7, 72, 125)),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter BLoC example'),
      ),
    );
  }
}