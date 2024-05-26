import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class QuestionSetupPage extends StatefulWidget {
  @override
  _QuestionSetupPageState createState() => _QuestionSetupPageState();
}

class ClickableIcon {
  final IconData iconData;
  final String label;
  final List<String> subQuestions;

  ClickableIcon(this.iconData, this.label, this.subQuestions);
}

List<ClickableIcon> icons = [
  ClickableIcon(Icons.question_answer, 'Question 1', []),
  ClickableIcon(Icons.question_answer, 'Question 2', [
    'Horse A strong Animal',
    'Cow A strong Animal',
    'camel comes with hump',
    'Sheep Provides Wool',
  ]),
  ClickableIcon(Icons.question_answer, 'Question 3', [
    'Sub-question 3.1: This is sub-question 3.1',
  ]),
  ClickableIcon(Icons.question_answer, "Question 4", []),
];

class _QuestionSetupPageState extends State<QuestionSetupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Setup'),
      ),
      body: Center(
        child: Wrap(
          spacing: 10.0,
          children:
              icons.map((icon) => createClickableIcon(icon, context)).toList(),
        ),
      ),
    );
  }

  Widget createClickableIcon(ClickableIcon icon, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () async {
          if (icon.label == 'Question 4') {
            await storeDataInFirebase();
            await retrieveDataFromFirebase();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: Icon(
                  icon.iconData,
                  color: Colors.white,
                ),
                backgroundColor: Colors.blue,
              ),
              Text(icon.label),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> storeDataInFirebase() async {
    try {
      // Add data to Firestore (assuming Firebase is configured)
      await FirebaseFirestore.instance.collection('questions').doc('question_4').set({
        'question': 'Question 4 data',
        'timestamp': FieldValue.serverTimestamp(),
      });
      print('Data stored in Firebase successfully');
    } catch (error) {
      print('Error storing data in Firebase: $error');
    }
  }

  Future<void> retrieveDataFromFirebase() async {
    try {
      // Retrieve data from Firestore
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('questions').get();
      snapshot.docs.forEach((doc) {
        print('Question: ${doc['question']}, Timestamp: ${doc['timestamp']}');
      });
    } on FirebaseException catch (error) {
      print('Firebase Error: ${error.message}');
    } catch (error) {
      print('Error retrieving data from Firebase: $error');
    }
  }
}
