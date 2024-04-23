import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text("Button related properties"),backgroundColor: Colors.blueAccent,
          
        ),
        body:
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Math().firstValue();
              },
              child: const Text("First Value"),
            ),
            ElevatedButton(
              onPressed: () {
                Math().secondValue();
              },
              child: const Text("Second Value"),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
              onPressed: () {
                Math().add();
              },
              child: const Text("ADD"),
            ),
                ElevatedButton(
                  onPressed: () {
                    Math().minus();
                  },
                  child: Text("Minus"),
                ),
                ElevatedButton(onPressed:(){
                  Math().Multiply();
                },
                child:Text("Multiply"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Math {
  int a=10;
  int b=20;
  int c=0;
  void firstValue() {  
    print(a);
  }
   void secondValue() {
    print(b);
  }
  void add() { 
    c = a + b;
    print(c);
  }
  void minus() {
    c = a - b;
    print(c);
  }
  void Multiply() {
  c=a*b;
  print(c);
}
}