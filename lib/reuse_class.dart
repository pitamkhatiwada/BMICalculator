import 'package:flutter/material.dart';
class Reuseclass extends StatelessWidget {
Reuseclass ({required this.colour, required this.cardChild,required this.onPrased});
 final Color colour;
 final Widget cardChild;
 final Function() onPrased;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPrased,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}