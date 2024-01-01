import 'package:flutter/material.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';

import 'widgets/colored_container.dart';

main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flat Children'),
      ),
      body: Center(
        child: Container(
          height: 250,
          color: Colors.grey[400],
          child: const ListWheelScrollViewX(
            scrollDirection: Axis.horizontal,
            diameterRatio: 10000000,
            itemExtent: 80,
            children: [
              ColoredContainer(Colors.red),
              ColoredContainer(Colors.yellow),
              ColoredContainer(Colors.green),
              ColoredContainer(Colors.red),
              ColoredContainer(Colors.yellow),
              ColoredContainer(Colors.green),
              ColoredContainer(Colors.red),
              ColoredContainer(Colors.yellow),
              ColoredContainer(Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
