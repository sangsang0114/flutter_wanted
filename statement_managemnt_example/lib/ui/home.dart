import 'package:flutter/material.dart';
import 'package:statement_managemnt_example/ui/home_counter.dart';
import 'package:statement_managemnt_example/model.dart';

Counter counter = Counter();

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            HomeCounter(),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => counter.incremenet(counter: 1),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => counter.incremenet(counter: 5),
            tooltip: 'Increment 5',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}