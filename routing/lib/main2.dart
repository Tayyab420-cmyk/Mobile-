import 'package:flutter/material.dart';
import 'package:routing/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Column(
        children: [
          Text(
            "Second Page",
            style: TextStyle(fontSize: 50),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return MainPage();
                    },
                  ));
                },
                child: Text("back to  main")),
          )
        ],
      ),
    );
  }
}
