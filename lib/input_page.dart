import 'package:bmi_calculator/components/NumberCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/genre_card.dart';
import 'package:bmi_calculator/height_control.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genres selectedGenre = Genres.male;
  int _weight = 60;
  int _age = 30;

  void addWeight() {
    setState(() {
      if (_weight < kMaxWeight) {
        _weight++;
      }
    });
  }

  void subWeight() {
    setState(() {
      if (_weight > kMinWeight) {
        _weight--;
      }
    });
  }

  void addAge() {
    setState(() {
      if (_age < kMaxAge) {
        _age++;
      }
    });
  }

  void subAge() {
    setState(() {
      if (_age > kMinAge) {
        _age--;
      }
    });
  }

  void setGenre(Genres genre) {
    setState(() {
      selectedGenre = genre;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GenreCard(
                    genre: Genres.male,
                    selected: this.selectedGenre == Genres.male,
                    onPress: () => this.setGenre(Genres.male),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GenreCard(
                    genre: Genres.female,
                    selected: this.selectedGenre == Genres.female,
                    onPress: () => this.setGenre(Genres.female),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: HeightControl(),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: NumberCard(
                    value: _weight,
                    title: 'Weight',
                    onMinusPress: this.subWeight,
                    onPlusPress: this.addWeight,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: NumberCard(
                    value: _age,
                    title: 'Age',
                    onMinusPress: this.subAge,
                    onPlusPress: this.addAge,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Text(
              'Calculate...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            color: Color(0xFFFE2A4E),
          ),
        ],
      ),
    );
  }
}
