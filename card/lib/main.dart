import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Customization"),
        ),
        body: const Column(
          children: [
            MyWidgetred(),
          Column(
            children: [
              MyWidgetblack(),
            ],
          )
        ],
        ),
      )
    );
  }
}
class MyWidgetblack extends StatelessWidget {
  const MyWidgetblack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ 
        Container(
              height: 200,
              color: Color.fromARGB(255, 7, 1, 1),
            ),
      ],
    );
  }
}
class MyWidgetred extends StatelessWidget {
  const MyWidgetred({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            height: 200,
            color:  Color.fromARGB(255, 218, 5, 5),
          )
          ],
    );
  }
}
