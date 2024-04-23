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
          title: Text("Check Box"),
        ),
        body: checkboxclass(),
      ),
    );
  }
}

class checkboxclass extends StatefulWidget {
  @override
  State<checkboxclass> createState() => _checkboxclassState();
}

class _checkboxclassState extends State<checkboxclass> {
  bool isRedChecked = false;
  bool isGreenChecked = false;
  bool isBlueChecked = false;

  Color _containerColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        CheckboxListTile(
          value: isRedChecked,
          activeColor: Colors.red,
          title: Text("Red"),
          onChanged: (value) {
            setState(() {
              isRedChecked = value!;
              if (isRedChecked) {
                _containerColor = Colors.red;
                isGreenChecked = false;
                isBlueChecked = false;
              } else {
                _containerColor = Colors.white;
              }
            });
          },
        ),
        CheckboxListTile(
          value: isGreenChecked,
          activeColor: Colors.green,
          title: Text("Green"),
          onChanged: (value) {
            setState(() {
              isGreenChecked = value!;
              if (isGreenChecked) {
                _containerColor = Colors.green;
                isRedChecked = false;
                isBlueChecked = false;
              } else {
                _containerColor = Colors.white;
              }
            });
          },
        ),
        CheckboxListTile(
          value: isBlueChecked,
          activeColor: Colors.blue,
          title: Text("Blue"),
          onChanged: (value) {
            setState(() {
              isBlueChecked = value!;
              if (isBlueChecked) {
                _containerColor = Colors.blue;
                isRedChecked = false;
                isGreenChecked = false;
              } else {
                _containerColor = Colors.white;
              }
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 100,
          height: 100,
          color: _containerColor,
        ),
      ],
    );
  }
}
