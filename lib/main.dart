// runApp() function => its main job is actually to show some UI on the screen
// in dart is not allowed to run function like this => runApp()
// instead, you must wrap code like this into other function
// main function gets executed automatically
// we should pass the runApp a so called widget tree
// a widget tree is a combination of flutter widget that build the overall user interface
// we use const to optimize the code (go to slides to understand better)
import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart'; //runApp() coming from here

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.pinkAccent,
        body: GradientContainer(
            Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98)),
      ),
    ),
  );
}
