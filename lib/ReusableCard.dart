import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //made a widget into a reusable function as used above - ReusableCard
  ReusableCard({@required this.colour, this.cardChild});

  final Color
      colour; //value of final and const can't be changed but final can have access to things at runtime but const cannot eg get current time during runtime
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
