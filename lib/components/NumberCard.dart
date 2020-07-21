import 'package:bmi_calculator/components/RoundIconButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/my_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumberCard extends StatelessWidget {
  final String title;
  final int value;
  final Function onMinusPress;
  final Function onPlusPress;

  NumberCard({this.title, this.value, this.onMinusPress, this.onPlusPress});

  @override
  Widget build(BuildContext context) {
    return MyCard(
      backgroundColor: Color(kBackgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            this.title,
            style: kLabelStyle,
          ),
          Text(
            this.value.toString(),
            style: kNumberStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                onPressed: this.onMinusPress,
                icon: FontAwesomeIcons.minus,
              ),
              SizedBox(
                width: 10,
              ),
              RoundIconButton(
                onPressed: this.onPlusPress,
                icon: FontAwesomeIcons.plus,
              ),
            ],
          )
        ],
      ),
    );
  }
}
