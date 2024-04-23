import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card design"),
        ),
        body: Card(
          elevation: 15,
          shadowColor: const Color.fromARGB(255, 64, 77, 255),
          
          child: Container(
            width: 400,
            height: 200,
            color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}