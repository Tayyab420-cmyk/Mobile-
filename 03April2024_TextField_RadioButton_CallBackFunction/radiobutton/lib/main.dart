import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppRadioButton());
}

class MyAppRadioButton extends StatelessWidget {
  const MyAppRadioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Radio Button Widget'),
        ),
        body: const RadioButtonClass(),
      ),
    );
  }
}

class RadioButtonClass extends StatefulWidget {
  const RadioButtonClass({super.key});

  @override
  State<RadioButtonClass> createState() => _RadioButtonClassState();
}

class _RadioButtonClassState extends State<RadioButtonClass> {
  String  selectedValue = 'true';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("mass bunk"),
          leading: Radio(
            value: 'yes',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ),

         ListTile(
          title: const Text("class ki chutti"),
          leading: Radio(
            value: 'absolutly yes',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Selected value: $selectedValue",
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
