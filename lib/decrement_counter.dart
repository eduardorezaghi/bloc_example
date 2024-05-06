import 'package:bloc_example/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DecrementCounter extends StatelessWidget {
  DecrementCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Share the CounterCubit instance from the parent widget.
    final cubit = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Decrement Counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            // Use BlocBuilder to rebuild only the Text widget.
            BlocBuilder(
              builder: (context, state) => Column(
                children: [
                  Text(
                    'You have decremented the counter this many times:',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '$state',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              bloc: cubit,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => cubit.decrement(),
              child: const Text('Decrement'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back),
                ),
              ],
            )),
      ),
    );
  }
}
