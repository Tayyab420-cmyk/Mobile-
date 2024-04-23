import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Quiz No 2"),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 500,
                height: 500,
                margin: const EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                // Example color
                child:Column( 
                  children: [
                    Container(
                      width: 185,
                      height: 50,
                      color: Colors.amberAccent, 
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(2),

                     
                    ),
                    Row(
                      children: [
                           Container(
                      width: 50,
                        height: 50,
                        color: Colors.deepOrange,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(2),
                      ),
                      Container(
                        width: 107,
                        height: 50,
                        color: Colors.purpleAccent,
                      )
                      ],

                    ),

                     
                      Container(
                        width: 185,
                        height: 300,
                        color: Colors.green,
                        margin: EdgeInsets.all(5),
                        padding:EdgeInsets.all(2),
                        child: SingleChildScrollView(
                          child:Column(
                            children: [
                          Container(
                            width: 185,
                            height: 100,
                            color: Colors.blueAccent,

                          ) ,
                          
                          Container(
                            width: 185,
                            height: 100,
                            color: Color.fromARGB(255, 161, 61, 17),
                          ) ,
                          Container(
                            width: 185,
                            height: 100,
                            color: Color.fromARGB(255, 61, 4, 206),
                          ) ,
                          Container(
                            width: 185,
                            height: 100,
                            color: Color.fromARGB(255, 16, 138, 166),
                          ) ,
                          ],
                          ),
                        ),
                      ),
                      
                      
                     
                    Container(
                      width: 185,
                      height: 50,
                      color: const Color.fromARGB(255, 255, 102, 7),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(2),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 500,
                height: 500,
                margin: const EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                color: Colors.red, 
                child: Column(
                  children: [
                    Container(
                  width: 185,
                  height: 220,
                  color: Color.fromARGB(255, 8, 36, 211),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 500,
                height: 500,
                margin: const EdgeInsets.all(10),
                color: Colors.green, // Example color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
