import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/my_card.dart';
import 'package:flutter/material.dart';

class HeightControl extends StatefulWidget {
  @override
  _HeightControlState createState() => _HeightControlState();
}

class _HeightControlState extends State<HeightControl> {
  int _height = 180;

  @override
  Widget build(BuildContext context) {
    return MyCard(
      backgroundColor: Color(kBackgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'HEIGHT',
            style: kLabelStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                _height.toString(),
                style: kNumberStyle,
              ),
              Text(
                'cm',
                style: kSmallStyle,
              )
            ],
          ),
          Slider(
            value: _height.toDouble(),
            min: 140.0,
            max: 220.0,
            onChanged: (double value) {
              setState(() {
                _height = value.round();
              });
            },
          )
        ],
      ),
    );
  }
}
