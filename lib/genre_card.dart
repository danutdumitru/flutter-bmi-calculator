import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/my_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Map<String, Color> _colors = {
  'selectedBack': Color(kSelectedColor),
  'selectedFront': Colors.white,
  'unselectedBack': Color(0xFF101427),
  'unselectedFront': Color(0xFF8D8E9A)
};

class GenreCard extends StatelessWidget {
  final Genres genre;
  final bool selected;
  final Function onPress;

  GenreCard({@required this.genre, @required this.selected, this.onPress});

  @override
  Widget build(BuildContext context) {
    final backColor =
        this.selected ? _colors['selectedBack'] : _colors['unselectedBack'];
    final frontColor =
        this.selected ? _colors['selectedFront'] : _colors['unselectedFront'];

    return MyCard(
      onTap: this.onPress,
      backgroundColor: backColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            this.genre == Genres.male
                ? FontAwesomeIcons.mars
                : FontAwesomeIcons.venus,
            size: 80,
            color: frontColor,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            this.genre == Genres.male ? 'MALE' : 'FEMALE',
            style: TextStyle(
              color: frontColor,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
