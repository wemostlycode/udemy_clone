import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  Color backgroundColor;
  String title;
  TextStyle titleStyle;
  List<Widget> children;

  ExpandedWidget(
      {this.backgroundColor, this.title, this.titleStyle, this.children});

  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  IconData icon = Icons.add;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin: EdgeInsets.only(left: 12, right: 12),
          elevation: 2,
          child: Container(
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
            margin: EdgeInsets.only(left: 12, right: 12),
            height: 58.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: widget.backgroundColor,
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: ExpansionTile(
            onExpansionChanged: (value) {
              if (value) {
                setState(() {
                  icon = Icons.remove;
                });
              } else {
                setState(() {
                  icon = Icons.add;
                });
              }
            },
            trailing: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(
                icon,
                color: Colors.red,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                widget.title,
                style: widget.titleStyle,
              ),
            ),
            children: widget.children,
          ),
        ),
      ],
    );
  }
}
