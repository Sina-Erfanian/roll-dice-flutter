import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// we can create variable with var keyword
// there is one note to remember when working with var and that is we cant use const anymore in our widget because with var we can reassign the value of the variable and flutter actually cant guarantee that the code changed or not

// the type of the variable data in automatically infer by dart
// but we can explicitly tell the flutter to what is the data type
// the code below is an example of that
// String myName = "sina";
// we can also use <<final>> & <<const>> keyword to create constant variable
// for example :
// final getUsername = db.username(); at runtime
// const password = "sina2222"; at compiled time

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorBegin, this.colorEnd, {super.key});
  // here we can have multiple constructor function like example below
  // GradientContainer.purple({super.key}) : colorBegin = Colors.deepPurple , colorEnd = Colors.deepPurpleAccent
  // the main one we can use like this GradientContainer()
  // but when we write another constructor function we use it like this => GradientContainer.purple()

  final Color colorBegin;
  final Color colorEnd;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [colorBegin, colorEnd],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
