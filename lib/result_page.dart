import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  Color saveButtonColor = kinActiveCardColor;
  ResultPage({@required this.resultCategory, @required this.finalResult, @required this.interpretation});
  final String resultCategory;
  final String finalResult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: Text(
                'Final Result',
                style: TextStyle(
                  color: kinActiveFontIconColor,
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kinActiveCardColor,
              cardPadding: EdgeInsets.all(30.0),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultCategory,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade700,
                        fontSize: 25.0),
                  ),
                  Text(
                    finalResult,
                    style:
                        TextStyle(fontSize: 90.0, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI Range:',
                        style: TextStyle(
                            color: kActiveFontIconColor, fontSize: 25.0),
                      ),
                      Text(
                        '18,5 - 25 kg/m2',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ],
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0,),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      color: Color(0xFF0A0D21),
                      width: 140.0,
                      height: 55.0,
                      child: Center(
                        child: Text(
                          'Save Result',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kbottomCardColor,
              height: kbottomCardHeight,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                    fontSize: 30.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
