import 'package:flutter/material.dart';

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
          title: Text("Check Box"),
        ),
        body: const checkboxclass(),
      ),
    );
  }
}
class checkboxclass extends StatefulWidget {
  const checkboxclass({super.key});

  @override
  State<checkboxclass> createState() => _checkboxclassState();
}

class _checkboxclassState extends State<checkboxclass> {
  bool isChecked =true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          value: isChecked,
          activeColor: Colors.amberAccent,
          title: Text("Dart Language"), 
          onChanged:(value) {
            setState(() {
              isChecked = value!;
            });
          },
          ),
          Text("$isChecked")
      ],
    );
  }
}