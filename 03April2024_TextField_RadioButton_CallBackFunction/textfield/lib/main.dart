import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyAppTextWidget());
}

class MyAppTextWidget extends StatelessWidget {
  const MyAppTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("LogIn Page"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            const TextFieldClass(),
          ],
        ),
        
      ),
    );
  }
}

class TextFieldClass extends StatefulWidget {
  const TextFieldClass({super.key});

  @override
  State<TextFieldClass> createState() => _TextFieldClassState();
}

class _TextFieldClassState extends State<TextFieldClass> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  void setvarible() {
    t2.text = t1.text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          width: 350,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: t1,
              decoration: const InputDecoration(border: OutlineInputBorder(),
              prefixIcon: Text("Email Pao",)
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                setvarible();
              });
            },
            child: const Text("Copy Data")),
        SizedBox(
          width: 350,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: t2,
              // obscureText: true,
              decoration: const InputDecoration(border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.remove_red_eye)
            
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
