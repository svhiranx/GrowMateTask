import 'package:flutter/cupertino.dart';

class Comment {
  final String username;
  final String comment;
  final String time;
  final String dpUrl;
  final int replies;
  Comment(
      {@required this.username,
      @required this.comment,
      @required this.time,
      @required this.dpUrl,
      @required this.replies});
}
