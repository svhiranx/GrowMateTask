import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amtpercent;

  ChartBar(this.label, this.amtpercent);

  @override
  Widget build(BuildContext context) {
    var amt = (amtpercent * 100).round();
    return Container(
      padding: EdgeInsets.only(top: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width - 250,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(220, 220, 220, 1)),
                ),
                FractionallySizedBox(
                  widthFactor: amtpercent,
                  child: Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(104, 118, 132, 1),
                  )),
                )
              ],
            ),
          ),
          Text(
            '  ${amt}%  ${label}',
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(104, 118, 132, 1)),
          ),
        ],
      ),
    );
  }
}
