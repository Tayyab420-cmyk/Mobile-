import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(text: 'Material',width:250),
                  CustomContainer(text: 'Cupertino',width: 250),
                ],
              ),
              SizedBox(height: 10),
              // Second Row
              CustomContainer(text: 'Widgets', width: 600),
              SizedBox(height: 10),
              // Third Row
              CustomContainer(text: 'Rendering', width: 600),
              SizedBox(height: 10),
              // Fourth Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(text: 'Animation'),
                  CustomContainer(text: 'Painting'),
                  CustomContainer(text: 'Gestures'),
                ],
              ),
              SizedBox(height: 10),
              // Fifth Row
              CustomContainer(text: 'Foundation', width: 600),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String text;
  final double? width;

  const CustomContainer({required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 140,
      padding: EdgeInsets.all(10),
      color: Colors.amber,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
