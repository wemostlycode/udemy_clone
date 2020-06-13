import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  @required
  int current;
  @required
  int listCount;
  @required
  Color selectedColor;
  @required
  Color normalColor;
  @required
  double horizontalSpacing;

  DotsIndicator(
      {this.listCount,
      this.current,
      this.horizontalSpacing,
      this.selectedColor,
      this.normalColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ...List.generate(listCount, (index) {
          return Container(
            width: MediaQuery.of(context).size.width / 43,
            height: MediaQuery.of(context).size.height / 90,
            margin: EdgeInsets.symmetric(
                vertical: 10, horizontal: horizontalSpacing),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: selectedColor),
                color: current == index ? selectedColor : normalColor),
          );
        })
      ],
    );
  }
}
