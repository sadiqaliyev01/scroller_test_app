import 'dart:ui';

import 'package:flutter/cupertino.dart';

class TopMode {
  final String subtitle;
  final String name;
  final String title;
  final String time;
  final Color color;

  final IconData icon;

  TopMode(
      {
    required this.subtitle, required this.name, required this.title, required this.time, required this.color, required this.icon
      }
      );

}