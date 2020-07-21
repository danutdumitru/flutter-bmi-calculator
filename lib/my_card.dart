import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final Function onTap;

  MyCard({@required this.backgroundColor, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: this.child,
      ),
    );
  }
}
