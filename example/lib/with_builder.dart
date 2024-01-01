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
  Color _getColor(int index) {
    List<Color> colors = [
      Colors.red,
      Colors.yellow,
      Colors.green,
    ];
    return colors[index % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('With Builder'),
      ),
      body: Center(
        child: Container(
          height: 250,
          color: Colors.grey[400],
          child: ListWheelScrollViewX.useDelegate(
            scrollDirection: Axis.horizontal,
            diameterRatio: 1000,
            itemExtent: 80,
            childDelegate:
                ListWheelChildBuilderDelegate(builder: (context, index) {
              return ColoredContainer(_getColor(index));
            }),
          ),
        ),
      ),
    );
  }
}
