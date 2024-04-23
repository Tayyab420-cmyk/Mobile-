// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyAppStateful());
// }

// class MyAppStateful extends StatelessWidget {
//   const MyAppStateful({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Stateful Widget"),
//         ),
//         body: const StatefulClass(),
//       ),
//     );
//   }
// }

// class StatefulClass extends StatefulWidget {
//   const StatefulClass({Key? key}) : super(key: key);

//   @override
//   State<StatefulClass> createState() => _StatefulClassState();
// }

// class _StatefulClassState extends State<StatefulClass> {
//   int count = 0;
//   bool isButtonDisabled = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ElevatedButton(
//           onPressed: isButtonDisabled ? null : () {
//             setState(() {
//               count++;
//               if (count >= 5) {
//                 count = 5; // Ensure count doesn't go beyond 5
//                 isButtonDisabled = true; // Disable the button
//               }
//             });
//           },
//           child: const Text("Counter"),
//         ),
//         Container(
//           width: 200,
//           height: 100,
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.black26),
//             color: Colors.amberAccent,
//           ),
//           child: Center(
//             child: Text(
//               count == 5 ? "Welcome" : "$count",
//               style: const TextStyle(
//                 fontSize: 24, // Adjust the font size as needed
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyAppStateful());
}

class MyAppStateful extends StatelessWidget {
  const MyAppStateful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
        ),
        body: StatefulClass(),
      ),
    );
  }
}

class StatefulClass extends StatefulWidget {
  const StatefulClass({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatefulClassState();
}

class _StatefulClassState extends State<StatefulClass> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("Counter"),
        ),
        SizedBox(height: 20),
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            color: Colors.amberAccent,
          ),
          child: Center(
            child: count < 5 ? Text("$count") : Text("Welcome"),
          ),
        )
      ],
    );
  }
}