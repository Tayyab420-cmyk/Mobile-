import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        title: Text("Stack"),
        ),
        body: MyWidgetstack(),
        ),
    );
  }
}
class MyWidgetstack extends StatelessWidget {
  const MyWidgetstack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          
          children: [
            
            Container(
              width: 500,
              height: 100,
              color: Colors.black12,

            ),
            MyWidgetContainer(),
            MyWidgetContainer2(),
            
          ],
        );
  }
}
class MyWidgetContainer extends StatelessWidget {
  const MyWidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 500,
              height: 100,
              color: Colors.amberAccent,
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),

            );
  }
}
class MyWidgetContainer2 extends StatelessWidget {
  const MyWidgetContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 500,
              height: 100,
              color: Color.fromARGB(255, 117, 15, 234),
              margin: EdgeInsets.fromLTRB(30, 30, 1, 1),

            );
  }
}