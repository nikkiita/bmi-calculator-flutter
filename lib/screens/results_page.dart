import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/big_bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResults,
    @required this.resultText,
    @required this.interpretation,
    @required this.rangeText,
    @required this.rangeNumber,
  });

  final String bmiResults;
  final String resultText;
  final String interpretation;
  final String rangeText;
  final String rangeNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResults,
                    style: kBmiResultTextStyle,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        rangeText,
                        style: kRangeTextStyle,
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Text(
                        rangeNumber,
                        style: kRangeNumberStyle,
                      ),
                    ],
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BigBottomButton(
            buttonTitle: 'RE - CALCULATE YOUR BMI',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
