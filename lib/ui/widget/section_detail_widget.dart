import 'package:flutter/material.dart';

class SectionDetailWidget extends StatefulWidget {
  final String courseNo;
  final String title;
  final String duration;
  final Widget trailing;
  final EdgeInsetsGeometry margin;
  final Color color;

  const SectionDetailWidget(
      {Key key,
      this.courseNo,
      this.title,
      this.duration,
      this.trailing,
      this.margin = const EdgeInsets.only(left: 12, right: 12),
      this.color = Colors.white})
      : super(key: key);

  @override
  _SectionDetailWidgetState createState() => _SectionDetailWidgetState();
}

class _SectionDetailWidgetState extends State<SectionDetailWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: widget.margin,
      color: widget.color,
      padding: EdgeInsets.all(12),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            widget.courseNo,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: size.width / 28),
          ),
          SizedBox(
            width: size.width / 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: size.width / 1.5,
                  child: Text(
                    widget.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width / 28),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Video - ${widget.duration}',
                      style: TextStyle(
                          color: Colors.grey[700], fontSize: size.width / 32),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.closed_caption,
                      color: Colors.black.withOpacity(0.8),
                    )
                  ],
                )
              ],
            ),
          ),
          widget.trailing
        ],
      ),
    );
  }
}
