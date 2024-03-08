// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_experiment_app/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.counts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('App bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('count = $count'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: const Text('inc'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                counter.decrement();
              },
              child: const Text('dec'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                counter.deleteCount();
              },
              child: const Text('delete'),
            )
          ],
        ),
      ),
    );
  }
}
