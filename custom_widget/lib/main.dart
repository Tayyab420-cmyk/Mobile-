import 'package:custom_widget/custom_widget.dart';
import 'package:flutter/material.dart';// Import your custom widget file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Widget Demo'),
        ),
        body: Center(
          child: CustomWidget(specificIcon: Icons.add), // Example usage of CustomWidget
        ),
      ),
    );
  }
}
