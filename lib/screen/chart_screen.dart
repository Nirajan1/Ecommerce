import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Text("chart Screen 1"),
          Text("chart Screen 1"),
          Text("chart Screen 1"),
          Text("chart Screen 1"),
        ],
      ),
    );
  }
}
