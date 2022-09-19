import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Image.asset(
          'lib/assets/Vector.png',
          fit: BoxFit.fill,
        ),
      ),
      Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
        Colors.black87,
        Colors.transparent,
        Colors.transparent,
      ], begin: Alignment.bottomCenter, end: Alignment.topCenter))),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.subdirectory_arrow_right_rounded,
                color: Colors.white,
                size: MediaQuery.of(context).size.width * 0.1,
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Will China invade Taiwan before end september? ',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Icon(
                  Icons.filter_list_rounded,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.1,
                ),
              )
            ],
          ),
        ],
      )
    ]);
  }
}
