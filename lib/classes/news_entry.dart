import 'package:flutter/material.dart';

class NewsEntry {
  final DateTime date;
  final String name;
  final String description;
  NewsEntry(
      {@required this.date, @required this.name, @required this.description});
}
