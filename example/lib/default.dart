import 'package:example/widgets/colored_container.dart';
import 'package:flutter/material.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_x.dart';

main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Default'),
      ),
      body: Center(
        child: Container(
          height: 250,
          color: Colors.grey[400],
          child: const ListWheelScrollViewX(
            scrollDirection: Axis.horizontal,
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
