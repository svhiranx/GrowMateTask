import 'package:flutter/material.dart';

class RelatedNewsCard extends StatelessWidget {
  String thumbnailUrl;
  String title;

  RelatedNewsCard(this.thumbnailUrl, this.title);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
      child: Card(
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                height: height * 0.1,
                width: width * 0.25,
                child: Image.asset(
                  thumbnailUrl,
                  fit: BoxFit.fill,
                ),
              ),
              Flexible(
                  child: Text(title,
                      style: const TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 18,
                          color: Colors.black))),
            ],
          )),
    );
  }
}
