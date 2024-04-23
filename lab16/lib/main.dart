import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
          title: const Text("Extended Widget",style: TextStyle(color: Colors.deepOrange),),
          backgroundColor: Colors.greenAccent,
        ),
        // body: Row(
        //   children: [
        //     Expanded(
        //       flex: 1,
        //       child: Container(
        //         margin: const EdgeInsets.only(right: 10),
        //         width: 100,
        //         height: 100,
        //         color: Colors.indigoAccent,
              
        //       ),
        //     ),
        //     Expanded(
        //       flex: 3,
        //       child: Container(
        //         margin: const EdgeInsets.only(right: 10),
        //         width: 100,
        //         height: 100,
        //         color: const Color.fromARGB(255, 198, 199, 203),
              
        //       ),
        //     ),
        //     Expanded(
        //       flex:4,
        //       child: Container(
        //         margin: const EdgeInsets.only(right: 10),
        //         width: 100,
        //         height: 100,
        //         color: Color.fromARGB(255, 200, 236, 23),
        //       ),
        //     ),
        //   ],
        // ),
        // body:const Center(
        //   child: CircleAvatar(
        //     backgroundColor: Colors.red,
        //     radius: 100,
        //     backgroundImage: AssetImage("Tayyab.jpg"),
        //     child: Text("Text",style: TextStyle(fontSize: 50),),
        //   ),
        // ),
        // body:Center(
          // child: const Icon(
          //   Icons.add_location,
          //   size: 150,
          //   color: Color.fromARGB(255, 221, 163, 26),
          //   shadows: [
          //     BoxShadow(
          //       color: Colors.redAccent,
          //       blurRadius: 1.0,
          //       spreadRadius: 5.0,
          //       offset: Offset(5.0, 4.0),
          //     )
          //   ],
          // ),
        // ),
        body:ListTile(
        leading: Icon(Icon.add_location),
        title: Text("Tayyab Ahmad"),
        trailing: IconButton(
          
          
        ),
        )
      ),
    )
    ;
  }
}