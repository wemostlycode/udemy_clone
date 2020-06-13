import 'package:flutter/material.dart';

class CourseDetail {
  IconData _icon;
  String _label;

  CourseDetail(this._icon, this._label);

  String get label => _label;

  set label(String value) {
    _label = value;
  }

  IconData get icon => _icon;

  set icon(IconData value) {
    _icon = value;
  }
}
