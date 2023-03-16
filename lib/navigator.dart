import 'package:flutter/material.dart';
import 'constants.dart';
class ButtonButton extends StatelessWidget {
  final Function() onTAP;
  final String buttonText;
  ButtonButton({required this.buttonText,required this.onTAP});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTAP,
      child: Container(
        color: kButtonColor,
        child: Center(
          child: Text(buttonText,
            style: kTextStyle2,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kButtoncontenerhight,
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}

