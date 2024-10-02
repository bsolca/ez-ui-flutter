import 'package:flutter/material.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';

@immutable
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => setState(() => counter++),
            child: const Text('Increment'),
          ),
          Text('Count: $counter'),
        ].withSpaceBetween(
          height: ConstLayout.spacerSmall,
        ),
      ),
    );
  }
}
