import 'package:flutter/material.dart';

// we can create dynamic widget with the help of constructor function
// we have three step to do it =>
// 1.accept it in constructor function
// 2.store it in variable
// 3.use it!

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); // shorter way
  // const StyledText(text, {super.key}) : text = text; // alternative way
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 28, color: Colors.white),
    );
  }
}
