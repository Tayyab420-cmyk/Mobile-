import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({super.key});
  var list=['one,two,three,four,five,six'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Scroll View'),backgroundColor: Colors.pink,shadowColor: Colors.black54,
          
        ),
        // body:ListView.builder(
        //   itemBuilder:(context,index){
        //     return Text(list[index]);
        //   },
        //   itemCount: list.length,

        // )
        body:
      //   scrollDirection: Axis.horizontal,
      //   children:[
      //   Text("first"),
      //   Text('Second'),
      //   Text('third'),
      //   Text('five'),
      //   ],
      // ),
        SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          reverse: true,
          padding: const EdgeInsets.all(10),
          child: Row(
           children: [
              Container(
              
                margin: const EdgeInsets.only(bottom: 10),
                height: 300,
                width: 200,
                color: Colors.limeAccent,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 300,
                width: 200,
                color: Color.fromARGB(255, 206, 143, 17),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 300,
                width: 200,
                color: Color.fromARGB(255, 228, 58, 15),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 300,
                width: 200,
                color: Color.fromARGB(255, 73, 9, 221),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 300,
                width: 200,
                color: const Color.fromARGB(255, 129, 130, 120),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 300,
                width: 200,
                color: const Color.fromARGB(255, 218, 225, 140),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 300,
                width: 200,
                color: Color.fromARGB(255, 115, 66, 66),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 300,
                width: 200,
                color: Colors.limeAccent,
              ),
            
            ],
          
          ),
          
        )
        
        

      )
    );
  }
}
// appBar: AppBar(
        //   centerTitle: true,
        //   title: const Text("Inkwell"),
        // ),
        // body:InkWell(
        //   onTap: () => print('Press'),
        //   splashColor: Colors.black87,
        //   highlightColor: Colors.blueAccent,
        //   borderRadius: const BorderRadius.all(Radius.circular(20)),
        //   child: Container(
        //     width: 200,
        //     height: 300,
        //     color: const Color.fromARGB(255, 14, 234, 241),
        //     margin: const EdgeInsets.all(10),
            
        //   ),
        // )