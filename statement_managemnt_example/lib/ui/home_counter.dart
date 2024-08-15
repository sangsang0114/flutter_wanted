import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:statement_managemnt_example/ui/home.dart';

class HomeCounter extends StatefulWidget {
  const HomeCounter({super.key});

  @override
  State<HomeCounter> createState() => _HomeCounterState();
}

class _HomeCounterState extends State<HomeCounter> {
  late int _counter;


  void changeCounter(){
    setState(() {
      _counter = counter.value;
    });
  }
  @override
  void initState() {
    super.initState();
    _counter = counter.value;
    counter.addListener(changeCounter);
  }

  @override
  void dispose() {
    counter.removeListener(changeCounter);
    counter.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
