import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container for Question No 1
          Container(
            height: 100,
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text(
              'Question No 1',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          // Row containing image container, name container, and the last container
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container for images (scrollable vertically)
              Container(
                width: 200,
                height: 400,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/WhatsApp Image 2024-01-07 at 21.06.36_accd9520.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/WhatsApp Image 2024-01-07 at 21.06.36_accd9520.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/WhatsApp Image 2024-01-07 at 21.06.36_accd9520.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              // Container with your name
              Column(
                children:[
                  Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 243, 114, 33),
                  child: Text(
                    'Tayyab Ahmad',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                
                Container(
                    height: 350,
                    width: 300,
                    color: Color.fromARGB(255, 72, 9, 231),
                    child: Center(
                     child: Align(
                       alignment: Alignment.bottomRight,
                         child: Container(
                           width: 100,
                            height: 100,
                             color: Colors.brown,
      ),
    ),
  ),
),

                ] 
              ),
            ],
          ),
          Row(
            children: [
              Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: ClipOval(
              child: Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
              color: Colors.deepOrange,
              boxShadow: [
              BoxShadow(
              color: Colors.black12,
              spreadRadius: 10, // Reduced spread radius
              blurRadius: 7,
              offset: Offset(0, 3),
          )
        ],
      ),
    ),
  ),
),

            ],
          )
        ],
        
      ),
      
    );
  }
}
