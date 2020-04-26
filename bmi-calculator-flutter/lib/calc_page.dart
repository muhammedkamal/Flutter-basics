import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'buttom_button.dart';

class Calcluate extends StatelessWidget {
  Calcluate(
      {@required this.result, @required this.bmi, @required this.comment});
  final String result, bmi, comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'YOUR RESULT',
            style: kResultTitleText,
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              colour: kInActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      result,
                      style: kResultText,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: kBMIResult,
                    ),
                  ),
                  Center(
                    child: Text(
                      comment,
                      style: kResultCommentText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
