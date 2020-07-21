import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(kPrimaryColor),
        scaffoldBackgroundColor: Color(kPrimaryColor),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E9A),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 20.0,
          ),
          thumbColor: Color(kAccentColor),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 40,
          ),
          overlayColor: Color(0x15FE2A4E),
        ),
      ),
      home: InputPage(),
    );
  }
}
