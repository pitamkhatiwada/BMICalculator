import 'package:flutter/material.dart';
import 'constants.dart';
class IconContoral extends StatelessWidget {
  IconContoral({required this.icon,required this.textt});
   final IconData icon;
  final String textt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textt,
          style: kTextStyle
        ),
      ],
    );
  }
}
