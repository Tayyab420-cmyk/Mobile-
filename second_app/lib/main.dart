import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
   const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Properties"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          width: 200,
          height: 300,
          
          padding: EdgeInsets.all(10),
          decoration: 
          BoxDecoration(
            border: Border.all(color: Colors.black,width:5),
            color: Colors.blue, 
          ),
          child: Container(
            width: 100,
            height: 150,
            decoration: 
            BoxDecoration(
              border: Border.all(color: Colors.black26,width: 5),
              color: Colors.deepPurpleAccent,
            ),
           padding: EdgeInsets.all(10),
           child: Container(
            width: 100,
            height: 150,
            color:Colors.deepPurple,
            padding: EdgeInsets.all(10),
            child: Container(
              width: 100,
              height: 150,
              color: Colors.deepOrange,
              child:Center(
              child: const Text("Hello World"),
              
              ) 

            ),

           ),
          )

        ),
      ),
    );
  }
}
