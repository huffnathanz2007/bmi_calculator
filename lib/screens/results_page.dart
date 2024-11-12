import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiResults, required this.interpretation, required this.resultsText});

  final String bmiResults;
  final String resultsText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
              style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
                color: kActiveContainerColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultsText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                        bmiResults,
                      style: kBmiReadingTextStyle,
                    ),
                    Text(
                        interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,),
                  ],
                ), onPress: (){
            }),
          ),
          BottomButton(
            buttonTitle: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },)
        ],
      ),
    );
  }
}