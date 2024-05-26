import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        backgroundColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "0";
  String _currentNumber = "0";
  String _operand = "";
  double _result = 0.0;

  void _onNumberPressed(String text) {
    if (_currentNumber == "0") {
      setState(() {
        _currentNumber = text;
      });
    } else {
      setState(() {
        _currentNumber += text;
      });
    }
  }

  void _onOperandPressed(String text) {
    if (_operand.isEmpty) {
      setState(() {
        _operand = text;
        _result = double.parse(_currentNumber);
        _currentNumber = "0";
      });
    } else {
      _calculateResult();
      setState(() {
        _operand = text;
        _currentNumber = "0";
      });
    }
  }

  void _onEqualPressed() {
    _calculateResult();
    setState(() {
      _operand = "";
    });
  }

  void _calculateResult() {
    switch (_operand) {
      case "+":
        _result += double.parse(_currentNumber);
        break;
      case "-":
        _result -= double.parse(_currentNumber);
        break;
      case "*":
        _result *= double.parse(_currentNumber);
        break;
      case "/":
        _result /= double.parse(_currentNumber);
        break;
    }
    _currentNumber = _result.toString();
  }

  void _clear() {
    setState(() {
      _currentNumber = "0";
      _operand = "";
      _result = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              child: Text(
                _currentNumber,
                style: TextStyle(fontSize: 48.0),
              ),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton("7"),
              _buildButton("8"),
              _buildButton("9"),
              _buildButton("/"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton("4"),
              _buildButton("5"),
              _buildButton("6"),
              _buildButton("*"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton("1"),
              _buildButton("2"),
              _buildButton("3"),
              _buildButton("-"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton("0"),
              _buildButton("C"),
              _buildButton("="),
              _buildButton("+"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            if (text == "C") {
              _clear();
            } else if (text == "=") {
              _onEqualPressed();
            } else if (text == "+" || text == "-" || text == "*" || text == "/") {
              _onOperandPressed(text);
            } else {
              _onNumberPressed(text);
            }
          },
          child: Text(
            text,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
