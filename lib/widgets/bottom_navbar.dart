import 'package:flutter/material.dart';

class BotNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.article_outlined,
          ),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stacked_line_chart_rounded),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined),
          title: Text(""),
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
