

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment No 1"),
        
        ),
        body: Container(
         
          
          padding: EdgeInsets.all(20),
          decoration: 
          BoxDecoration(
           
            color: Colors.blue,
            shape: BoxShape.circle,
            
          ),
          child:Container(
            width: 500,
            height: 400,
            padding: EdgeInsets.all(10),
            decoration:
            BoxDecoration(
              border: Border.all(color: Colors.black87,width: 5),
              color: Colors.cyan,
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 500,
              height: 400,
              padding: EdgeInsets.all(10),
              decoration:
              BoxDecoration(
                border: Border.all(color: Colors.black12,width: 5),
              ),
              child: Container(
                width: 500,
                height: 400,
                padding:EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.redAccent,width: 10),
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 500,
                  height: 400,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12,width: 10),
                    color: Colors.indigoAccent,
                    shape:BoxShape.circle,
                  ),
                ),
              ),
            ),

          )
        ),
      ),
    );
  }
}