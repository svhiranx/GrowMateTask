import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  Alignment alignment;
  String text;
  @override
  BlackButton(this.alignment, this.text);
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontFamily: 'Lato', color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(color: Color.fromRGBO(43, 40, 40, 1)),
            ),
          ),
        ),
      ),
    );
  }
}
