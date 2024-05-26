import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final IconData specificIcon;

  CustomWidget({required this.specificIcon});

  @override
  Widget build(BuildContext context) {
    return specificIcon != null
        ? ButtonWithIcon(icon: specificIcon)
        : SimpleButton();
  }
}

class ButtonWithIcon extends StatelessWidget {
  final IconData icon;

  ButtonWithIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Your onPressed logic here
      },
      icon: Icon(icon),
      label: Text('Button with Icon'),
    );
  }
}

class SimpleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Your onPressed logic here
      },
      child: Text('Simple Button'),
    );
  }
}
