import 'package:flutter/material.dart';
import 'package:udemy_clone/core/utils/constants.dart';

class ChipWidget extends StatefulWidget {
  @required
  VoidCallback onTap;
  @required
  int index;

  ChipWidget({int index, this.onTap});

  @override
  _ChipWidgetState createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(right: deviceWidth / 80),
        child: GestureDetector(
          onTap: widget.onTap,
          child: Chip(
            backgroundColor: Colors.grey[200],
            label: Text(
              (Constants.categoriesList()[widget.index].categoryName),
            ),
          ),
        ));
  }
}
