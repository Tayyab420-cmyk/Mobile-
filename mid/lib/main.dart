import 'package:flutter/material.dart';
import 'dart:math';

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
          title: Text('Mid Term'),
          backgroundColor: Colors.amber,
        ),
        body: ScrollableRows(),
      ),
    );
  }
}

class ScrollableRows extends StatelessWidget {
  String generateRandomUsername() {
    List<String> adjectives = [
      'Tayyab',
      'Ahmad',
      'Bilal',
      'Hamza',
      'Salman',
      'Asif',
      'Ashraf',
      'Usama',

      

    ];

   

    Random random = Random();
    int adjectiveIndex = random.nextInt(adjectives.length);

    return '${adjectives[adjectiveIndex]}';
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                20,
                (index) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("salman.jpg"),
                    backgroundColor: Colors.blue,
                    child: Text('User'),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 300,
            child: ListView.builder(
              
              itemCount: 9,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  
                  child: Column(
                    children: [
                      Container(
                        child: ListTile(
                          leading: SizedBox(
                            child: CircleAvatar(
                              backgroundImage: AssetImage("Tayyab.jpg"),
                              radius: 20,
                            ),
                          ),
                          title: Text(generateRandomUsername()),
                          subtitle: Text('Seen'),
                          trailing: Icon(Icons.camera_alt),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                15,
                (index) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    
                    child: Center(child: Text('US Bro US')),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 400,
            child: ListView.builder(
             
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Center(child: Text('Last But not least')),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
