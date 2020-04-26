import 'package:flutter/material.dart';
import 'constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({this.text,this.onTap});
  final Function onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomCardColour,
        height: kBottomCardHeight,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            text,
            style: kBottomButtonText,
          ),
        ),
      ),
    );
  }
}