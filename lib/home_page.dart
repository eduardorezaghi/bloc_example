import 'package:bloc_example/cubit/counter_cubit.dart';
import 'package:bloc_example/decrement_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Row(
            children: [
              const Icon(Icons.flutter_dash),
              const SizedBox(width: 8),
              Text(title),
            ],
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Change only the Text, by using BlocBuilder.
            // This means that, if the state changes, only the Text widget will be rebuilt.
            BlocBuilder(
              builder: (context, state) => Text(
                '$state',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              bloc: cubit,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => cubit.increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => cubit.decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(onPressed: 
            () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>  DecrementCounter(),
              ),
            ),
            tooltip: 'Navigate to DecrementCounter',
            child: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
